;;; ido-mode configuration



(use-package smex
      :ensure nil
      :init (smex-initialize)
      :bind ("M-x" . smex))

;;(use-package amx 
;;  :config (amx-mode))

(use-package ido
  :ensure nil
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
      :ensure nil
      :init (ido-vertical-mode 1))

(use-package flx-ido
      :ensure nil
      :init (flx-ido-mode 1))    

(use-package ido-completing-read+
      :ensure nil
      :init (ido-ubiquitous-mode 1))    



(use-package ido-grid-mode
  :ensure nil
  :init
  (ido-grid-mode 1))

(use-package idomenu
  :ensure nil
  :config
  (autoload 'idomenu "idomenu" nil t))











































(provide 'idomode)
