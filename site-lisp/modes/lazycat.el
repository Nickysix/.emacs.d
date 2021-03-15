(use-package awesome-tab
  :ensure nil
  :load-path "~/.emacs.d/site-lisp/local/packages/awesome-tab"
  :config
  (awesome-tab-mode t))

(use-package aweshell
  :load-path "/home/nick/.emacs.d/site-lisp/local/packages/aweshell/aweshell.el"
  :config
  (require 'aweshell))

(use-package lazycat-theme
  :disabled
  :load-path "~/.emacs.d/site-lisp/local/themes/lazycat-theme"
  :config
  (require 'lazycat-dark-theme))
