;;; init-golang.el --- Extensions for go lang mode

;; Filename: init-golang.el
;; Description: Extensions for go lang mode
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2013, Andy Stewart, all rights reserved.
;; Created: 2013-10-16 22:38:54
;; Version: 0.1
;; Last-Updated: 2013-10-16 22:38:54
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-golang.el
;; Keywords:
;; Compatibility: GNU Emacs 24.2.1
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
;; Extensions for go lang mode
;;

;;; Installation:
;;
;; Put init-golang.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-golang)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-golang RET
;;

;;; Change log:
;;
;; 2013/10/16
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

(require 'go-mode)
(require 'gotest)

;;; Code:

(defun go-run-buffer()
  (interactive)
  (shell-command (concat "go run " (buffer-name))))

;;; ### Golang ###
(lazy-load-unset-keys
 '("C-k" "M-o")
 go-mode-map)
(lazy-load-set-keys
 '(
   ("C-c C-c" . go-run-buffer)
   ("C-c C-f" . gofmt)
   ("C-c C-d" . godoc)
   ("C-c C-a" . go-import-add)
   ("C-c t" . go-test-current-test)
   ("C-c f" . go-test-current-file)
   ("C-c p" . go-test-current-project)
   ("C-c b" . go-test-current-benchmark))
 go-mode-map)

(provide 'init-golang)

;;; init-golang.el ends here
