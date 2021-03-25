;;; ibuffer.el --- ibuffer configuration             -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Nick

;; Author: Nick <nick@nick-h81234>
;; Keywords: filters

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:


(global-set-key (kbd "C-x C-b") 'ibuffer)


(setq ibuffer-saved-filter-groups
      '(("default"
	       ("Emacs-Config" (or (filename . ".emacs.d")
			                       (filename . "emacs-config")))
		     ("Org" (or (mode . org-mode)
		                (filename . "OrgMode")))
         ("Code" (filename . "code"))
	       ("Web Dev" (or (mode . html-mode)
			                  (mode . css-mode)))
	       ("Subversion" (name . "\*svn"))
	       ("Dired" (mode . dired-mode))
	       ("Magit" (name . "^\\*magit\\*$"))
	       ("Text" (name . ".txt"))
	       ("ERC" (mode . erc-mode))
	       ("Emacs" (or
                   (name . "^\\*scratch\\*$")
                   (name . "^\\*Messages\\*$")))
	       ("Help" (or (name . "^\\*Help\\*$")
		                 (name . "^\\*Apropos\\*$")
		                 (name . "^\\*info\\*$"))))))

(add-hook 'ibuffer-mode-hook
	        '(lambda ()
	           (ibuffer-switch-to-saved-filter-groups "default")))

(setq ibuffer-show-empty-filter-groups t)


(provide 'ibuffer)
;;; ibuffer.el ends here
