;;; viewer.el --- View-mode extension
;; $Id: viewer.el,v 1.3 2009/02/19 02:50:02 rubikitch Exp $

;; Copyright (C) 2009  rubikitch

;; Author: rubikitch <rubikitch@ruby-lang.org>
;; Keywords: view, extensions
;; URL: http://www.emacswiki.org/cgi-bin/wiki/download/viewer.el

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; Viewer is view-mode extension. View-mode is finger-friendly than
;; normal editing because of many alphabetical commands. Let's use
;; view-mode more to protect our pinky.

;; This package provides:
;; * specify files to open by `view-mode' by default.
;; * stay in `view-mode' in unwritable files.
;; * indicate `view-mode' by modeline color.
;; * override default `view-mode-map' for major modes.
;; * open ANY files by `view-mode' for enthusiasts.

;;; Installation:

;; Put viewer.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'viewer)
;; (viewer-stay-in-setup)
;; (setq viewer-modeline-color-unwritable "tomato"
;;       viewer-modeline-color-view "orange")
;; (viewer-change-modeline-color-setup)
;;
;; If you want to open any file by `view-mode', add the following:
;; (viewer-aggressive-setup 'force)
;; 
;; Note that the command `view-mode' should be bound in easy-to-type
;; key.
;;
;; If you want to open any file matching a regexp, add the following:
;; (setq view-mode-by-default-regexp "/regexp-to-path")
;;
;; No need more.

;;; Customize:

;;
;; All of the above can customize by:
;;      M-x customize-group RET viewer RET
;;

;;; Tips:

;; Defining major-mode specific `view-mode' is useful.
;; See `define-overriding-view-mode-map'.
;;
;; [EVAL IT] (describe-function 'define-overriding-view-mode-map)


;;; History:

;; $Log: viewer.el,v $
;; Revision 1.3  2009/02/19 02:50:02  rubikitch
;; * view-mode by default
;; * update doc
;;
;; Revision 1.2  2009/02/18 23:57:11  rubikitch
;; * Aggressive view-mode
;; * Stay in view-mode
;; * Change mode-line color
;;
;; Revision 1.1  2009/02/18 15:04:14  rubikitch
;; Initial revision
;;

;;; Code:

(defvar viewer-version "$Id: viewer.el,v 1.3 2009/02/19 02:50:02 rubikitch Exp $")
(eval-when-compile (require 'cl))

;;;; (@* "Overriding view-mode keymap")
(defun define-overriding-view-mode-map-internal (mode-name key-bindings)
  (let ((mapsym (intern (concat (symbol-name mode-name) "-view-map")))
        (view-mode-sym (intern (concat (symbol-name mode-name) "-view-mode"))))
    (eval `(defvar ,mapsym nil))
    (let ((map (make-sparse-keymap)))
      (loop for (key . command) in key-bindings
            do (define-key map (read-kbd-macro key) command))
      (set mapsym map)
      (setq minor-mode-map-alist
          (cons (cons view-mode-sym map)
                (delete (assq view-mode-sym minor-mode-map-alist) minor-mode-map-alist)))
      nil)))

(defmacro define-overriding-view-mode-map (mode-name &rest key-bindings)
  "Define major-mode specific view-mode keymap.
Note that the car of an element of KEY-BINDINGS is `kbd' notation.

For example, to define `view-mode' keys for `emacs-lisp-mode':
 (define-overriding-view-mode-map emacs-lisp-mode
   (\"C-m\" . find-function)
   (\"C-j\" . find-variable))
"
  `(define-overriding-view-mode-map-internal ',mode-name ',key-bindings))

(defun viewer-install-extension ()
  (set (make-local-variable (intern (concat (symbol-name major-mode) "-view-mode")))
       t))
(add-hook 'view-mode-hook 'viewer-install-extension)
(defun viewer-uninstall-extension ()
  (kill-local-variable (intern (concat (symbol-name major-mode) "-view-mode"))))
(defadvice view-mode-disable (before viewer activate)
  (viewer-uninstall-extension))

;;;; (@* "View-mode by default")
(defcustom view-mode-by-default-regexp nil
  "*Regexp of file name to open by `view-mode'."
  :type 'string  
  :group 'viewer)

(defun view-mode-by-default-setup ()
  (when (and buffer-file-name view-mode-by-default-regexp
             (string-match view-mode-by-default-regexp buffer-file-name))
    (view-mode 1)
    (message "view-mode by view-mode-by-default-regexp.")))
(add-hook 'find-file-hook 'view-mode-by-default-setup)

;;;; (@* "Aggressive view-mode")
(defgroup viewer nil
  "View-mode extensions"
  :group 'view)

(defcustom viewer-aggressive-minimum-size 100
  "*Minimum file size to enable aggressive view-mode."
  :type 'integer
  :group 'viewer)

(defcustom viewer-aggressive-writable t
  "*When non-nil, aggressive view-mode buffer is writable."
  :type 'boolean  
  :group 'viewer)
(defadvice find-file-noselect (after switch-to-view-file)
  (when (bufferp ad-return-value)
    (with-current-buffer ad-return-value
      (aggressive-view-mode))))

(defun aggressive-view-mode ()
  (when (and (> (buffer-size) viewer-aggressive-minimum-size)
             (file-regular-p filename))
        (view-mode 1)
        (setq buffer-read-only (not (file-writable-p filename)))))

;; (describe-function 'find-file-noselect)
;; (memq 'aggressive-view-mode find-file-hook)

;; (viewer-aggressive-setup nil)
;; (viewer-aggressive-setup t)
;; (viewer-aggressive-setup 'force)
(defun viewer-aggressive-setup (arg)
  "Setup aggressive `view-mode'.

When ARG is t, all new files are opened by `view-mode'.
When ARG is 'force, enable `view-mode' even if file buffer is selected.
When ARG is nil, uninstall it."
  (case arg
    ('force
     (remove-hook 'find-file-hook 'aggressive-view-mode)
     (ad-enable-advice 'find-file-noselect 'after 'switch-to-view-file)
     (ad-update 'find-file-noselect))
    (nil
     (remove-hook 'find-file-hook 'aggressive-view-mode)
     (ad-disable-advice 'find-file-noselect 'after 'switch-to-view-file)
     (ad-update 'find-file-noselect))
    (t
     (add-hook 'find-file-hook 'aggressive-view-mode)
     (ad-disable-advice 'find-file-noselect 'after 'switch-to-view-file)
     (ad-update 'find-file-noselect))))

;;;; (@* "Stay in view-mode")
(defvar view-mode-force-exit nil)
(defmacro viewer-stay-in-unless-writable-advice (f)
  `(defadvice ,f (around viewer-stay-in-unless-writable activate)
     (if (and (buffer-file-name)
              (not view-mode-force-exit)
              (not (file-writable-p (buffer-file-name))))
         (message "File is unwritable, so stay in view-mode.")
       ad-do-it)))


(defun view-mode-force-exit ()
  (interactive)
  (let ((view-mode-force-exit t)) (view-mode-exit)))
(add-hook 'edebug-setup-hook 'view-mode-force-exit)

(defun viewer-stay-in-setup ()
  "Setup stay-in view-mode.
Stay in `view-mode' when the file is unwritable."
  (viewer-stay-in-unless-writable-advice view-mode-exit)
  (viewer-stay-in-unless-writable-advice view-mode-disable))

;;;; (@* "Change mode-line color")
(defvar viewer-modeline-color-default (face-background 'modeline))
(defcustom viewer-modeline-color-unwritable "tomato"
  "*Modeline color when file is not writable."
  :type 'string
  :group 'viewer)
(defcustom viewer-modeline-color-view "orange"
  "*Modeline color for `view-mode'."
  :type 'string
  :group 'viewer)

(defun viewer-change-modeline-color ()
  (interactive)
  (set-face-background
   'modeline
   (cond ((and buffer-file-name view-mode
               (not (file-writable-p buffer-file-name)))
          viewer-modeline-color-unwritable)
         (view-mode
          viewer-modeline-color-view)
         (t
          viewer-modeline-color-default))))

(defmacro viewer-change-modeline-color-advice (f)
  `(defadvice ,f (after change-mode-line-color activate)
     (viewer-change-modeline-color)
     (force-mode-line-update)))

(defun viewer-change-modeline-color-setup ()
  "Setup coloring modeline.
See also `viewer-modeline-color-unwritable' and `viewer-modeline-color-view'."
  (viewer-change-modeline-color-advice toggle-read-only)
  (viewer-change-modeline-color-advice view-mode-enable)
  (viewer-change-modeline-color-advice view-mode-disable)
  (viewer-change-modeline-color-advice kill-buffer)
  (viewer-change-modeline-color-advice switch-to-buffer)
  (viewer-change-modeline-color-advice pop-to-buffer)
  (viewer-change-modeline-color-advice bury-buffer)
  (viewer-change-modeline-color-advice other-window)
  (viewer-change-modeline-color-advice select-window)
  (viewer-change-modeline-color-advice display-buffer)
  (viewer-change-modeline-color-advice set-window-configuration)
  (viewer-change-modeline-color-advice select-frame)
  (viewer-change-modeline-color-advice keyboard-quit)
  (viewer-change-modeline-color-advice exit-minibuffer)
  nil)

(provide 'viewer)

;; How to save (DO NOT REMOVE!!)
;; (emacswiki-post "viewer.el")
;;; viewer.el ends here
