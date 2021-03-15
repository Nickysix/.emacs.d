;;; init-cycle-buffer.el --- Init for cycle buffer

;; Filename: init-cycle-buffer.el
;; Description: Init for cycle buffer
;; Author: Andy Stewart <andy@freedom>
;; Maintainer: Andy Stewart <andy@freedom>
;; Copyright (C) 2013, Andy Stewart, all rights reserved.
;; Created: 2013-12-28 07:52:04
;; Version: 0.1
;; Last-Updated: 2013-12-28 07:52:04
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-cycle-buffer.el
;; Keywords:
;; Compatibility: GNU Emacs 24.3.50.1
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
;; Init for cycle buffer
;;

;;; Installation:
;;
;; Put init-cycle-buffer.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-cycle-buffer)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-cycle-buffer RET
;;

;;; Change log:
;;
;; 2013/12/28
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

(require 'one-key)
(require 'cycle-buffer)                 ;buffer循环切换

;;; Code:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Cycle Buffer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar one-key-menu-cycle-buffer-alist nil
  "The `one-key' menu alist for CYCLE-BUFFER.")

(setq one-key-menu-cycle-buffer-alist
      '(
        (("l" . "Elisp") . (lambda () (interactive) (cycle-buffer-in-special-mode 'emacs-lisp-mode)))
        (("e" . "Jade") . (lambda () (interactive) (cycle-buffer-in-special-mode 'jade-mode)))
        (("'" . "EAF") . (lambda () (interactive) (cycle-buffer-in-special-mode 'eaf-mode)))
        (("i" . "IRC") . (lambda () (interactive) (cycle-buffer-in-special-mode 'erc-mode)))
        (("d" . "Dired") . (lambda () (interactive) (cycle-buffer-in-special-mode 'dired-mode)))
        (("o" . "Org") . (lambda () (interactive) (cycle-buffer-in-special-mode 'org-mode)))
        (("H" . "Haskell") . (lambda () (interactive) (cycle-buffer-in-special-mode 'haskell-mode)))
        (("t" . "Term") . (lambda () (interactive) (cycle-buffer-in-special-mode 'term-mode)))
        (("y" . "Yaoddmuse") . (lambda () (interactive) (cycle-buffer-in-special-mode 'yaoddmuse-mode)))
        (("r" . "Ruby") . (lambda () (interactive) (cycle-buffer-in-special-mode 'ruby-mode)))
        (("V" . "PDF View") . (lambda () (interactive) (cycle-buffer-in-special-mode 'pdf-view-mode)))
        (("C" . "C-Mode") . (lambda () (interactive) (cycle-buffer-in-special-mode 'c-mode)))
        (("c" . "C++-Mode") . (lambda () (interactive) (cycle-buffer-in-special-mode 'c++-mode)))
        (("j" . "JS") . (lambda () (interactive) (cycle-buffer-in-special-mode 'js-mode)))
        (("x" . "XML") . (lambda () (interactive) (cycle-buffer-in-special-mode 'nxml-mode)))
        (("p" . "Python") . (lambda () (interactive) (cycle-buffer-in-special-mode 'python-mode)))
        (("s" . "CSS") . (lambda () (interactive) (cycle-buffer-in-special-mode 'css-mode)))
        (("h" . "html") . (lambda () (interactive) (cycle-buffer-in-special-mode 'web-mode)))
        (("m" . "OCaml") . (lambda () (interactive) (cycle-buffer-in-special-mode 'tuareg-mode)))
        (("g" . "Golang") . (lambda () (interactive) (cycle-buffer-in-special-mode 'go-mode)))
        (("q" . "QML") . (lambda () (interactive) (cycle-buffer-in-special-mode 'qml-mode)))
        (("v" . "Vala") . (lambda () (interactive) (cycle-buffer-in-special-mode 'vala-mode)))
        ))

(defun one-key-menu-cycle-buffer ()
  "The `one-key' menu for CYCLE-BUFFER."
  (interactive)
  (one-key-menu "CYCLE-BUFFER" one-key-menu-cycle-buffer-alist t))

(provide 'init-cycle-buffer)

;;; init-cycle-buffer.el ends here
