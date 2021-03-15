;;; init-symbol-overlay.el --- Configuration for symbol-overlay

;; Filename: init-symbol-overlay.el
;; Description: Configuration for symbol-overlay
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2019, Andy Stewart, all rights reserved.
;; Created: 2019-05-12 14:38:29
;; Version: 0.1
;; Last-Updated: 2019-05-12 14:38:29
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-symbol-overlay.el
;; Keywords:
;; Compatibility: GNU Emacs 26.1.92
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
;; Configuration for symbol-overlay
;;

;;; Installation:
;;
;; Put init-symbol-overlay.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-symbol-overlay)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-symbol-overlay RET
;;

;;; Change log:
;;
;; 2019/05/12
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
(require 'symbol-overlay)

;;; Code:

(lazy-load-set-keys
 '(
   ("s" . symbol-overlay-put)
   ("n" . symbol-overlay-jump-next)
   ("p" . symbol-overlay-jump-prev)
   ("w" . symbol-overlay-save-symbol)
   ("t" . symbol-overlay-toggle-in-scope)
   ("e" . symbol-overlay-echo-mark)
   ("d" . symbol-overlay-jump-to-definition)
   ("S" . symbol-overlay-isearch-literally)
   ("r" . symbol-overlay-rename)
   ("R" . symbol-overlay-query-replace)
   ("q" . symbol-overlay-remove-all)
   ("<" . symbol-overlay-jump-first)
   (">" . symbol-overlay-jump-last)
   ("M-n" . symbol-overlay-switch-forward)
   ("M-p" . symbol-overlay-switch-backward)
   )
 symbol-overlay-map)

(provide 'init-symbol-overlay)

;;; init-symbol-overlay.el ends here
