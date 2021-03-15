;;; init-insert-translated-name.el --- Configuration for insert-translated-name.el

;; Filename: init-insert-translated-name.el
;; Description: Configuration for insert-translated-name.el
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2018, Andy Stewart, all rights reserved.
;; Created: 2018-09-26 08:57:45
;; Version: 0.1
;; Last-Updated: 2018-09-26 08:57:45
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-insert-translated-name.el
;; Keywords:
;; Compatibility: GNU Emacs 27.0.50
;;
;; Features that might be required by this library:
;;
;; `insert-translated-name'
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
;; Configuration for insert-translated-name.el
;;

;;; Installation:
;;
;; Put init-insert-translated-name.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-insert-translated-name)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-insert-translated-name RET
;;

;;; Change log:
;;
;; 2018/09/26
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
(require 'insert-translated-name)

;;; Code:
(dolist (hook (list
               'atomic-chrome-edit-mode-hook
               'markdown-mode-hook
               ))
  (add-hook hook '(lambda ()
                    (require 'insert-translated-name)
                    (insert-translated-name-use-original-translation))))

(provide 'init-insert-translated-name)

;;; init-insert-translated-name.el ends here
