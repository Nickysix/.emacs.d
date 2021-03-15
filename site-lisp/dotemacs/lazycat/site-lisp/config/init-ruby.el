;;; init-ruby.el --- Init for auto complete

;; Filename: init-ruby.el
;; Description: Init for auto complete
;; Author: Andy Stewart <andy@freedom>
;; Maintainer: Andy Stewart <andy@freedom>
;; Copyright (C) 2018, Andy Stewart, all rights reserved.
;; Created: 2018-04-27 23:54:30
;; Version: 0.2
;; Last-Updated: 2018-04-27 23:54:30
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-ruby.el
;; Keywords:
;; Compatibility: GNU Emacs 27.0.50
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Init for ruby
;;

;;; Installation:
;;
;; Put init-ruby.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-ruby)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-ruby RET
;;

;;; Change log:
;;
;; 2018/04/27
;;      * Second released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require
(require 'robe)
(require 'inf-ruby-extension)
(require 'ruby-end)
(require 'ruby-extension)

(setq ruby-insert-encoding-magic-comment nil) ; don't insert utf-8 comment in first line

(add-hook 'ruby-mode-hook
          '(lambda ()
             (robe-mode 1)
             (ruby-end-mode 1)
             ))

(lazy-load-set-keys
 '(
   ("C-c t" . ruby-hash-syntax-toggle))
 ruby-mode-map)

;; Re-implement `ruby-smile-rules' avoid too deep indent.
(defun ruby-smie-rules (kind token)
  (pcase (cons kind token)
    (`(:elem . basic) ruby-indent-level)
    ;; "foo" "bar" is the concatenation of the two strings, so the second
    ;; should be aligned with the first.
    (`(:elem . args) (if (looking-at "\\s\"") 0))
    ;; (`(:after . ",") (smie-rule-separator kind))
    (`(:before . ";")
     (cond
      ((smie-rule-parent-p "def" "begin" "do" "class" "module" "for"
                           "while" "until" "unless"
                           "if" "then" "elsif" "else" "when"
                           "rescue" "ensure" "{")
       (smie-rule-parent ruby-indent-level))
      ;; For (invalid) code between switch and case.
      ;; (if (smie-parent-p "switch") 4)
      ))
    (`(:before . ,(or `"(" `"[" `"{"))
     (cond
      ((and (equal token "{")
            (not (smie-rule-prev-p "(" "{" "[" "," "=>" "=" "return" ";"))
            (save-excursion
              (forward-comment -1)
              (not (eq (preceding-char) ?:))))
       ;; Curly block opener.
       (ruby-smie--indent-to-stmt))
      ((smie-rule-hanging-p)
       ;; Treat purely syntactic block-constructs as being part of their parent,
       ;; when the opening token is hanging and the parent is not an
       ;; open-paren.
       (cond
        ((eq (car (smie-indent--parent)) t) nil)
        ;; When after `.', let's always de-indent,
        ;; because when `.' is inside the line, the
        ;; additional indentation from it looks out of place.
        ((smie-rule-parent-p ".")
         ;; Traverse up the call chain until the parent is not `.',
         ;; or `.' at indentation, or at eol.
         (while (and (not (ruby-smie--bosp))
                     (equal (nth 2 (smie-backward-sexp ".")) ".")
                     (not (ruby-smie--bosp)))
           (forward-char -1))
         (smie-indent-virtual))
        (t (smie-rule-parent))))))
    (`(:after . ,(or `"(" "[" "{"))
     ;; Use `smile-rule-parent' instead implementation of `ruby-mode.el'
     ;; To make code indent like below:
     ;;
     ;; long_long_long_example ({
     ;;     right_indent
     ;;   })
     ;;
     ;;
     ;; Not damn deep indent like:
     ;;
     ;; long_long_long_example ({
     ;;                           right_indent
     ;;   })
     ;;
     (save-excursion
       (smie-rule-parent)))
    (`(:before . " @ ")
     (save-excursion
       (skip-chars-forward " \t")
       (cons 'column (current-column))))
    (`(:before . "do") (ruby-smie--indent-to-stmt))
    (`(:before . ".")
     (if (smie-rule-sibling-p)
         (and ruby-align-chained-calls 0)
       (smie-backward-sexp ".")
       (cons 'column (+ (current-column)
                        ruby-indent-level))))
    (`(:before . ,(or `"else" `"then" `"elsif" `"rescue" `"ensure"))
     (smie-rule-parent))
    (`(:before . "when")
     ;; Align to the previous `when', but look up the virtual
     ;; indentation of `case'.
     (if (smie-rule-sibling-p) 0 (smie-rule-parent)))
    (`(:after . ,(or "=" "+" "-" "*" "/" "&&" "||" "%" "**" "^" "&"
                     "<=>" ">" "<" ">=" "<=" "==" "===" "!=" "<<" ">>"
                     "+=" "-=" "*=" "/=" "%=" "**=" "&=" "|=" "^=" "|"
                     "<<=" ">>=" "&&=" "||=" "and" "or"))
     (and (smie-rule-parent-p ";" nil)
          (smie-indent--hanging-p)
          ruby-indent-level))
    (`(:after . ,(or "?" ":")) ruby-indent-level)
    (`(:before . ,(guard (memq (intern-soft token) ruby-alignable-keywords)))
     (when (not (ruby--at-indentation-p))
       (if (ruby-smie--indent-to-stmt-p token)
           (ruby-smie--indent-to-stmt)
         (cons 'column (current-column)))))
    (`(:before . "iuwu-mod")
     (smie-rule-parent ruby-indent-level))
    ))

(provide 'init-ruby)
;;; init-ruby.el ends here
