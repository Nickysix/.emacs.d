;;; init-eaf.el --- Configuration for eaf

;; Filename: init-eaf.el
;; Description: Configuration for eaf
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2018, Andy Stewart, all rights reserved.
;; Created: 2018-07-21 12:44:34
;; Version: 0.1
;; Last-Updated: 2018-07-21 12:44:34
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-eaf.el
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
;; Configuration for eaf
;;

;;; Installation:
;;
;; Put init-eaf.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-eaf)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-eaf RET
;;

;;; Change log:
;;
;; 2018/07/21
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
(require 'eaf)

;;; Code:

;; You need configuration your own local proxy program first.
(setq eaf-proxy-type "socks5")
(setq eaf-proxy-host "127.0.0.1")
(setq eaf-proxy-port "1080")

;; Make `eaf-browser-restore-buffers' restore last close browser buffers.
(setq eaf-browser-continue-where-left-off t)

(eaf-bind-key undo_action "C-/" eaf-browser-keybinding)
(eaf-bind-key redo_action "C-?" eaf-browser-keybinding)
(eaf-bind-key scroll_up "M-j" eaf-browser-keybinding)
(eaf-bind-key scroll_down "M-k" eaf-browser-keybinding)
(eaf-bind-key scroll_up_page "M-n" eaf-browser-keybinding)
(eaf-bind-key scroll_down_page "M-p" eaf-browser-keybinding)
(eaf-bind-key open_link "M-h" eaf-browser-keybinding)
(eaf-bind-key open_link_new_buffer "M-H" eaf-browser-keybinding)
(eaf-bind-key insert_or_open_link_new_buffer "D" eaf-browser-keybinding)
(eaf-bind-key insert_or_open_link_background_buffer "F" eaf-browser-keybinding)
(eaf-bind-key watch-other-window-up-line "M-<" eaf-browser-keybinding)
(eaf-bind-key watch-other-window-down-line "M->" eaf-browser-keybinding)
(eaf-bind-key emacs-session-save "<f5>" eaf-browser-keybinding)
(eaf-bind-key refresh_page "M-r" eaf-browser-keybinding)

(eaf-setq eaf-browser-default-zoom (if (> (frame-pixel-width) 3000) "2.3" "1"))

(eaf-setq eaf-browser-aria2-proxy-host "127.0.0.1")
(eaf-setq eaf-browser-aria2-proxy-port "9888")
(eaf-setq eaf-terminal-font-size "18")
(eaf-setq eaf-browser-enable-adblocker "true")
(eaf-setq eaf-browser-enable-autofill "true")

(eaf-setq eaf-marker-letters "JKHLNMUIOYPFDSAVCRREW")

(defun jekyll-start-server ()
  (interactive)
  (eaf-terminal-run-command-in-dir "jekyll serve --livereload" "/home/andy/manateelazycat.github.io"))

(defun jekyll-open-local ()
  (interactive)
  (eaf-open-browser "http://127.0.0.1:4000"))

(provide 'init-eaf)

;;; init-eaf.el ends here
