;;; init-web-mode.el --- Init web mode

;; Filename: init-web-mode.el
;; Description: Init web mode
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2014 ~ 2018 Andy Stewart, all rights reserved.
;; Created: 2014-03-06 15:50:39
;; Version: 0.7
;; Last-Updated: 2018-09-02 16:51:21
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-web-mode.el
;; Keywords:
;; Compatibility: GNU Emacs 24.3.50.1
;;
;; Features that might be required by this library:
;;
;; `web-mode' `emmet-mode' `emmet-extension'
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
;; Init web mode
;;

;;; Installation:
;;
;; Put init-web-mode.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-web-mode)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-web-mode RET
;;

;;; Change log:
;;
;; 2018/09/02
;;      * Add `js2-refactor'.
;;
;; 2018/07/11
;;      * Use function `paredit-pair-kill+' in awesome-pair-extension.el 0.5 instead `tagedit-kill' to build better kill experience for `web-mode' and `ruby-mode'.
;;
;; 2018/06/12
;;      * Add config for `web-mode-markup-indent-offset'.
;;      * Use emmet-mode instead zencoding-mode.
;;      * Add `emmet-preview-current-line'
;;
;; 2018/06/11
;;      * Set `web-mode-tag-auto-close-style' with 2, make auto close tag more smart.
;;      * Binding Ctrl + k to `tagedit-kill', it's much better than paredit-pair-kill for web-mode.
;;      * Add some frequent commands in web-mode-map.
;;
;; 2014/03/06
;;      * First released.
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

(require 'web-mode)
(require 'emmet-mode)
(require 'emmet-extension)
(require 'js)
(require 'indium)
(require 'awesome-pair)
(require 'instant-rename-tag)
(require 'highlight-matching-tag)

;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; OS Config ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (featurep 'cocoa)
  ;; Initialize environment from user's shell to make eshell know every PATH by other shell.
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(setq web-mode-enable-auto-quoting nil) ;disable automatic insertion of double quotes, not easy to use if cursor in string

(highlight-matching-tag 1)

;; Emmit.
(setq web-mode-tag-auto-close-style 2) ;2 mean auto-close with > and </.
(setq web-mode-markup-indent-offset 2)
(dolist (hook (list
               'sgml-mode-hook
               'css-mode-hook
               'web-mode-hook
               ))
  (add-hook hook (lambda ()
                   ;; Make `emmet-expand-yas' not conflict with yas/mode
                   (setq emmet-preview-default nil)
                   (emmet-mode)
                   )))

;; Indium.
(add-hook 'js-mode-hook #'indium-interaction-mode)
(define-key indium-interaction-mode-map (kbd "C-c C-l") 'indium-reload)

(defvar one-key-menu-indium-alist nil
  "The `one-key' menu alist for JS-REFACOTRY.")

(setq one-key-menu-indium-alist
      '(
        (("c" . "Indium connect") . indium-connect)
        (("C" . "Indium launch") . indium-launch)
        (("i" . "Indium switch REPL buffer") . indium-switch-to-repl-buffer)
        (("a" . "Indium add breakpoint") . indium-add-breakpoint)
        (("A" . "Indium add condition breakpoint") . indium-add-conditional-breakpoint)
        (("e" . "Indium edit condition breakpoint") . indium-edit-breakpoint-condition)
        (("l" . "Indium list breakpoints") . indium-list-breakpoints)
        (("r" . "Indium remove breakpoint") . indium-remove-breakpoint)
        (("R" . "Indium remove all breakpoints") . indium-remove-all-breakpoints-from-buffer)
        (("t" . "Indium toggle breakpoint") . indium-toggle-breakpoint)
        ))

(defun one-key-menu-indium ()
  "The `one-key' menu for JS-REFACOTRY."
  (interactive)
  (one-key-menu "INDIUM" one-key-menu-indium-alist t))

;; We-mode.
(lazy-load-set-keys awesome-pair-key-alist web-mode-map)
(lazy-load-local-keys
 '(
   ("M-s-SPC" . web-mode-element-content-select)
   ("C-s-l" . web-mode-element-clone)
   ("C-M-SPC" . web-mode-mark-and-expand)
   ("C-:" . web-mode-comment-or-uncomment)
   ("M-i" . emmet-expand-yas)
   ("C-c M-i" . emmet-preview-current-line)
   ("C-M-SPC" . mark-sexp)
   ("M-R" . instant-rename-tag)
   )
 web-mode-map
 "web-mode-extension")

(provide 'init-web-mode)

;;; init-web-mode.el ends here
