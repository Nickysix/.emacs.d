(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("gnu elpa" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives 
             '("org" . "https://orgmode.org/elpa/") t)


(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("MELPA Stable" . 10)
        ("GNU ELPA"     . 5)
        ("MELPA"        . 0)))



(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("MELPA Stable" . "http://stable.melpa.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))





(require 'package)

(add-to-list 'package-archives
         '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
         '("melpa" . "https://melpa.org/packages/") t)

(setq package-pinned-packages
      '((imenu-anywhere . "melpa-stable")
        (spaceline . "melpa-stable")
        (clj-refactor . "melpa-stable")
        (cider . "melpa-stable")
        (clojure-mode . "melpa-stable")
        (linum-relative . "melpa-stable")
        (aggressive-indent . "melpa-stable")
        (evil-leader . "melpa-stable")
        (evil-visualstart . "melpa-stable")
        (evil-jumper . "melpa-stable")
        (evil-snipe . "melpa-stable")
        (evil . "melpa-stable")
        (evil-commentary . "melpa-stable")))