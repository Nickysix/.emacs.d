;;; init-doc-view.el --- Init doc view

;; Filename: init-doc-view.el
;; Description: Init doc view
;; Author: Andy Stewart <andy@freedom>
;; Maintainer: Andy Stewart <andy@freedom>
;; Copyright (C) 2013, Andy Stewart, all rights reserved.
;; Created: 2013-12-30 16:03:55
;; Version: 0.1
;; Last-Updated: 2013-12-30 16:03:55
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-doc-view.el
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
;; Init doc view
;;

;;; Installation:
;;
;; Put init-doc-view.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-doc-view)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-doc-view RET
;;

;;; Change log:
;;
;; 2013/12/30
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

(require 'doc-view)
(require 'doc-view-extension)

;;; Code:

(setq doc-view-cache-directory "~/.emacs.d/lazycat-emacs/book-cache")
(setq doc-view-image-width (- (display-pixel-width) 16))
(setq doc-view-resolution 200)

(lazy-load-unset-keys
 '(".")
 doc-view-mode-map)                     ;????????????
(lazy-load-unset-keys
 '("x" "M-<" "M->")
 doc-view-mode-map)                     ;??????????????????
(lazy-load-set-keys
 '(
   ([remap scroll-up] . doc-view-next-line-or-next-page) ;??????????????????, ?????? auto-scroll
   )
 doc-view-mode-map
 )
(lazy-load-set-keys
 '(
   ("N" . doc-view-next-page)                      ;?????????
   ("P" . doc-view-previous-page)                  ;?????????
   ("." . doc-view-first-page)                     ;?????????
   ("," . doc-view-last-page)                      ;????????????
   ("g" . doc-view-goto-page)                      ;???????????????
   ("e" . doc-view-scroll-down-or-previous-page)   ;??????????????????
   ("SPC" . doc-view-scroll-up-or-next-page)       ;??????????????????
   ("j" . doc-view-next-line-or-next-page)         ;?????????????????????
   ("k" . doc-view-previous-line-or-previous-page) ;?????????????????????
   ("t" . doc-view-show-tooltip)                   ;???????????????
   ("q" . bury-buffer)                             ;??????buffer
   ("Q" . doc-view-kill-proc-and-buffer)           ;?????????????????????
   ("C-s" . doc-view-search)                       ;??????
   ("C-S-n" . doc-view-search-next-match)          ;???????????????
   ("C-S-p" . doc-view-search-previous-match)      ;???????????????
   ("+" . doc-view-enlarge)                        ;????????????
   ("-" . doc-view-shrink)                         ;????????????
   ("C-c C-c" . doc-view-toggle-display)           ;???????????????????????????
   ("C-c C-t" . doc-view-open-text)                ;????????????
   ("r" . revert-buffer)                           ;??????
   ("s" . auto-scroll-mode)                        ;????????????
   ("<" . auto-scroll-faster)                      ;??????????????????
   (">" . auto-scroll-slower)                      ;??????????????????
   )
 doc-view-mode-map
 )

(provide 'init-doc-view)

;;; init-doc-view.el ends here
