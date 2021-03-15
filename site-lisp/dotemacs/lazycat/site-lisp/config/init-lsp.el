;;; init-lsp.el --- Configuration for lsp-mode

;; Filename: init-lsp.el
;; Description: Configuration for lsp-mode
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2018, Andy Stewart, all rights reserved.
;; Created: 2018-09-10 22:46:41
;; Version: 0.2
;; Last-Updated: 2018-09-14 09:48:52
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-lsp.el
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
;; Configuration for lsp-mode
;;

;;; Installation:
;;
;; Put init-lsp.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-lsp)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-lsp RET
;;

;;; Change log:
;;
;; 2018-09-14
;;      * Switch from eglot to lsp-mode since lsp-ruby looks fix disconnect problem.
;;
;; 2018/09/10
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
(require 'lsp-mode)

;;; Code:

(dolist (hook (list
               'js-mode-hook
               'ruby-mode-hook
               'python-mode-hook
               'go-mode-hook
               ))
  (add-hook hook '(lambda ()
                    (lsp)
                    )))

(provide 'init-lsp)

;;; init-lsp.el ends here
