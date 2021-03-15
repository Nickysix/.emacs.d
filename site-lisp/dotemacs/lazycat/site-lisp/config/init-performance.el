;;; init-performance.el --- Configure to improve performance

;; Filename: init-performance.el
;; Description: Configure to improve performance
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2019, Andy Stewart, all rights reserved.
;; Created: 2019-02-23 15:42:59
;; Version: 0.1
;; Last-Updated: 2019-02-23 15:42:59
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-performance.el
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
;; Configure to improve performance
;;

;;; Installation:
;;
;; Put init-performance.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-performance)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-performance RET
;;

;;; Change log:
;;
;; 2019/02/23
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


;;; Code:

;; Disable garbage collection when entering commands.
(defun max-gc-limit ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun reset-gc-limit ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'max-gc-limit)
(add-hook 'minibuffer-exit-hook #'reset-gc-limit)

;; Improve the performance of rendering long lines.
(setq-default bidi-display-reordering nil)

(provide 'init-performance)

;;; init-performance.el ends here
