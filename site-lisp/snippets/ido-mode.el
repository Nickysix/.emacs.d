;;----ido-mode-settings:------------------------------------------------------------

(require 'ido)

(ido-mode t)

;; make ido display choices vertically

(setq ido-separator "\n")

;; display any item that contains the chars you typed

(setq ido-enable-flex-matching t)


(use-package ido-vertical-mode :disabled
  :ensure t
  :init
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only))




;;SNIPPET
;;(define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;(define-key ido-completion-map (kbd "<down>") 'ido-next-match)
;;(define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
;;(define-key ido-completion-map (kbd "<up>") 'ido-prev-match)



;;IDO-CONFIGURATION

(use-package ido
  :init
  (progn
    (ido-mode 1)
    (ido-everywhere 1)    
  :config
  (progn
    (setq ido-enable-prefix nil
          ido-enable-flex-matching t
          ido-case-fold t
          ido-create-new-buffer 'always
          ido-use-filename-at-point nil
          ido-max-prospects 10)))

(use-package ido-vertical-mode
      :ensure t
      :init (ido-vertical-mode 1))

(use-package flx-ido
      :ensure t
      :init (flx-ido-mode 1))    

(use-package ido-completing-read+
      :ensure t
      :init (ido-ubiquitous-mode 1))    

(use-package smex
      :ensure t
      :init (smex-initialize)
      :bind ("M-x" . smex)))

(use-package ido-grid-mode
  :ensure t
  :config
  (ido-grid-mode 1))

