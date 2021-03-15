;;; ruby-extension.el --- Ruby extension

;; Filename: ruby-extension.el
;; Description: Ruby extension
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2018, Andy Stewart, all rights reserved.
;; Created: 2018-09-04 00:51:05
;; Version: 0.1
;; Last-Updated: 2018-09-04 00:51:05
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/ruby-extension.el
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
;; Ruby extension
;;

;;; Installation:
;;
;; Put ruby-extension.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'ruby-extension)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET ruby-extension RET
;;

;;; Change log:
;;
;; 2018/09/04
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
(defun ruby-hash-syntax-toggle ()
  "Toggle syntax of ruby hash literal in region from BEG to END between ruby 1.8 and 1.9 styles."
  (interactive)
  (let (beg end)
    (save-excursion
      (backward-up-list)
      (setq beg (point))
      (forward-list)
      (setq end (point))
      (let ((limit (copy-marker (max beg end)))
            (hashrocket-pattern "\\([^:]\\):\\([a-zA-Z0-9_]+\\) *=> *"))
        (goto-char (min beg end))
        (cond
         ((ruby-hash-syntax--code-has-pattern hashrocket-pattern limit)
          (ruby-hash-syntax--replace hashrocket-pattern "\\1\\2: " limit))
         ((ruby-hash-syntax--code-has-pattern "\\w+:" limit)
          (ruby-hash-syntax--replace "\\([a-zA-Z0-9_]+\\):\\( *\\(?:\"\\(?:\\\"\\|[^\"]\\)*\"\\|'\\(?:\\'\\|[^']\\)*'\\|[a-zA-Z0-9_]+([^)]*)\\|[^,]+\\)\\)" ":\\1 =>\\2" limit)))))))

(defun ruby-hash-syntax--code-has-pattern (pat limit)
  "A version of `search-forward' which skips over string literals.
Argument PAT is the search patter, while LIMIT is the maximum
search extent."
  (catch 'found
    (save-excursion
      (while (re-search-forward pat limit t)
        (unless (elt (syntax-ppss) 3)
          ;; If this isn't inside a string...
          (throw 'found t))))))

(defun ruby-hash-syntax--replace (from to end)
  "Replace FROM with TO up to END."
  (while (re-search-forward from end t)
    (replace-match to nil nil)))

(provide 'ruby-extension)

;;; ruby-extension.el ends here
