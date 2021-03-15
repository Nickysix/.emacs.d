;;; pp+.el --- Extensions to `pp.el'.
;;
;; Filename: pp+.el
;; Description: Extensions to `pp.el'.
;; Author: Drew Adams
;; Maintainer: Drew Adams
;; Copyright (C) 1999-2008, Drew Adams, all rights reserved.
;; Created: Fri Sep  3 13:45:40 1999
;; Version: 21.0
;; Last-Updated: Fri Apr 18 13:50:34 2008 (Pacific Daylight Time)
;;           By: dradams
;;     Update #: 150
;; URL: http://www.emacswiki.org/cgi-bin/wiki/pp+.el
;; Keywords: lisp
;; Compatibility: GNU Emacs 20.x, GNU Emacs 21.x, GNU Emacs 22.x
;;
;; Features that might be required by this library:
;;
;;   `pp'.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;    Extensions to `pp.el'.
;;
;;  User options defined here:
;;
;;    `pp-eval-expression-print-length',
;;    `pp-eval-expression-print-level'.
;;
;;  Internal variables defined here:
;;
;;    `pp-read-expression-map'.
;;
;;  ***** NOTE: The following function defined in `pp.el' has
;;              been REDEFINED HERE:
;;
;;    `pp-eval-expression'.
;;
;;
;;  Suggested binding:
;;
;;   (substitute-key-definition 'eval-expression 'pp-eval-expression global-map)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change log:
;;
;; 2008/04/14 dadams
;;     pp-eval-expression: Treat negative prefix arg.
;; 2008/04/13 dadams
;;     pp-eval-expression:
;;       Treat prefix arg (added optional arg).
;;       Respect eval-expression-debug-on-error and pp-eval-expression-print-*.
;;     Added: pp-eval-expression-print-(length|level), pp-read-expression-map.
;; 2007/02/04 dadams
;;     pp-eval-expression: Undid 01/05 workaround, because RMS fixed vanilla Emacs.
;; 2007/01/05 dadams
;;     pp-eval-expression: Adjusted to fit Emacs 22 definition, which doesn't eval.
;; 2006/01/29 dadams
;;     pp-eval-expression: Use read-from-minibuffer.
;; 2005/01/04 dadams
;;     Set buffer-read-only to nil.
;; 2004/03/24 dadams
;;     pp-eval-expression: Added call to font-lock-fontify-buffer.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'pp)

;;; Quiet the byte compiler for Emacs 20.
(defvar eval-expression-debug-on-error)

;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defvar pp-read-expression-map nil
  "`read-expression-map' with some Emacs-Lisp key bindings.")
(unless pp-read-expression-map
  (let ((map (make-sparse-keymap)))
    (define-key map "\M-\t" 'lisp-complete-symbol)
    (define-key map "\t" 'lisp-indent-line)
    (define-key map "\e\C-q" 'indent-sexp)
    (define-key map "\e\t" 'lisp-complete-symbol)
    (define-key map "\e\C-x" 'eval-defun)
    (define-key map "\e\C-q" 'indent-pp-sexp)
    ;;(define-key map "\177" 'backward-delete-char-untabify)
    (set-keymap-parent map minibuffer-local-map)
    (setq pp-read-expression-map map)))

(defcustom pp-eval-expression-print-length nil
  "Value for `print-length' while printing value in `pp-eval-expression'.
A value of nil means no limit."
  :group 'pp :group 'lisp :type '(choice (const :tag "No Limit" nil) integer))

(defcustom pp-eval-expression-print-level nil
  "Value for `print-level' while printing value in `pp-eval-expression'.
A value of nil means no limit."
  :group 'pp :group 'lisp :type '(choice (const :tag "No Limit" nil) integer))


;; REPLACES ORIGINAL in `pp.el':
;; 1. Use no `emacs-lisp-mode-hook'.
;; 2. Read with completion, using `pp-read-expression-map'.
;; 3. Call font-lock-fontify-buffer.
;; 4. Progress message added.
;; 5. Added optional arg and insertion behavior.
;; 6. Respect `pp-eval-expression-print-length', `pp-eval-expression-print-level',
;;    and `eval-expression-debug-on-error'.
;; 7. Adjusted to work in different Emacs releases.
;;
;;;###autoload
(defun pp-eval-expression (expression &optional insert-value)
  "Evaluate an Emacs-Lisp expression and pretty-print its value.
Add the value to the front of the variable `values'.
With a prefix arg, insert the value into the current buffer at point.
With no prefix arg:
 If the value fits on one line (frame width) show it in the echo area.
 Otherwise, show the value in buffer *Pp Eval Output*.

With a negative prefix arg, if the value is a string, then insert it
into the buffer without double-quotes (`\"').

This command respects options `pp-eval-expression-print-length',
`pp-eval-expression-print-level', and
`eval-expression-debug-on-error'.

Emacs-Lisp mode completion and indentation bindings are in effect."
  (interactive
   (list (read-from-minibuffer "Eval: " nil pp-read-expression-map t
                               'read-expression-history)
         current-prefix-arg))
  (message "Evaluating...")
  (if (or (not (boundp 'eval-expression-debug-on-error))
          (null eval-expression-debug-on-error))
      (setq values (cons (eval expression) values))
    (let ((old-value (make-symbol "t")) new-value)
      ;; Bind debug-on-error to something unique so that we can
      ;; detect when evaled code changes it.
      (let ((debug-on-error old-value))
	(setq values (cons (eval expression) values))
	(setq new-value debug-on-error))
      ;; If evaled code has changed the value of debug-on-error,
      ;; propagate that change to the global binding.
      (unless (eq old-value new-value)
	(setq debug-on-error new-value))))
  (let ((print-length pp-eval-expression-print-length)
	(print-level pp-eval-expression-print-level))
    (cond (insert-value
           (message "Evaluating...done. Value inserted.")
           (setq insert-value (prefix-numeric-value insert-value))
           (if (or (not (stringp (car values))) (wholenump insert-value))
               (pp (car values) (current-buffer))
             (princ (car values) (current-buffer))))
          (t
           (let* ((old-show-function temp-buffer-show-function)
                  ;; Use this function to display the buffer.
                  ;; This function either decides not to display it at all
                  ;; or displays it in the usual way.
                  (temp-buffer-show-function
                   (function
                    (lambda (buf)
                     (save-excursion
                       (set-buffer buf)
                       (goto-char (point-min))
                       (end-of-line 1)
                       (if (or (< (1+ (point)) (point-max))
                               (>= (- (point) (point-min)) (frame-width)))
                           (let ((temp-buffer-show-function old-show-function)
                                 (old-selected (selected-window))
                                 (window (display-buffer buf)))
                             (goto-char (point-min)) ; expected by some hooks ...
                             (make-frame-visible (window-frame window))
                             (unwind-protect
                                  (progn
                                    (select-window window)
                                    (run-hooks 'temp-buffer-show-hook))
                               (select-window old-selected)
                               (message "Evaluating...done.  \
See buffer *Pp Eval Output*.")))
                         (message "%s" (buffer-substring (point-min) (point)))))))))
             (with-output-to-temp-buffer "*Pp Eval Output*"
               (pp (car values))
               (with-current-buffer standard-output
                 (setq buffer-read-only nil)
                 (let ((emacs-lisp-mode-hook nil)
                       (change-major-mode-hook nil))
                   (emacs-lisp-mode))
                 (set (make-local-variable 'font-lock-verbose) nil)
                 (font-lock-fontify-buffer))))))))

;;;;;;;;;;;;;;;;;;

(provide 'pp+)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; pp+.el ends here
