;;; init-nox.el --- Configure for nox

;; Filename: init-nox.el
;; Description: Configure for nox
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2020, Andy Stewart, all rights reserved.
;; Created: 2020-03-28 16:24:15
;; Version: 0.1
;; Last-Updated: 2020-03-28 16:24:15
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-nox.el
;; Keywords:
;; Compatibility: GNU Emacs 26.3
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
;; Configure for nox
;;

;;; Installation:
;;
;; Put init-nox.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-nox)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-nox RET
;;

;;; Change log:
;;
;; 2020/03/28
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
(require 'xref)

;;; Code:

(dolist (hook (list
               'rust-mode-hook
               'python-mode-hook
               'ruby-mode-hook
               'java-mode-hook
               'sh-mode-hook
               'php-mode-hook
               'c-mode-common-hook
               'c-mode-hook
               'c++-mode-hook
               'haskell-mode-hook
               ))
  (add-hook hook '(lambda ()
                    (require 'nox)
                    (nox-ensure))))

(lazy-load-set-keys
 '(
   ("j" . xref-next-line)
   ("k" . xref-prev-line)
   )
 xref--xref-buffer-mode-map
 )

(provide 'init-nox)

;;; init-nox.el ends here
