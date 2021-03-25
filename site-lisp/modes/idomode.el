;;; ido-mode configuration



(use-package smex
      :straight nil
      :init (smex-initialize)
      :bind ("M-x" . smex))

;;(use-package amx 
;;  :config (amx-mode))

(use-package ido
  :straight nil
  :init
  (progn
    (ido-mode 1)
    (ido-everywhere 1))   
  :config
  (progn
    (setq ido-enable-prefix nil
          ido-enable-flex-matching t
          ido-case-fold t
          ido-create-new-buffer 'always
          ido-use-filename-at-point nil
          ido-max-prospects 10)))

(use-package ido-vertical-mode
      :straight nil
      :init (ido-vertical-mode 1))

(use-package flx-ido
      :straight nil
      :init (flx-ido-mode 1))    

(use-package ido-completing-read+
      :straight nil
      :init (ido-ubiquitous-mode 1))    

(use-package ido-grid-mode
  :straight nil
  :init
  (ido-grid-mode 1))

(use-package idomenu
  :straight nil
  :config
  (autoload 'idomenu "idomenu" nil t))











































(provide 'idomode)
