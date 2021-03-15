(use-package flx)


(use-package smex
      :init (smex-initialize)
      :bind (("M-x" . smex)))

(define-key ido-completion-map (kbd "C-n") 'ido-next-match)
(define-key ido-completion-map (kbd "<down>") 'ido-next-match)
(define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
(define-key ido-completion-map (kbd "<up>") 'ido-prev-match)


(use-package ido
  :ensure nil
  :bind (("C-x b" . ido-switch-buffer))
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
          ido-max-prospects 12
          ido-max-directory-size 100000
          completion-ignore-case t
          resize-mini-windows t
          ido-max-window-height 20
          max-mini-window-height 0.5
          ido-use-faces nil
          ido-use-virtual-buffers t
          ido-auto-merge-work-directories-length -1
          ido-file-extensions-order '(".org" ".txt" ".py" ".emacs" ".xml" ".el" ".ini" ".cfg" ".cnf"))))


(use-package flx-ido
      :config
      (flx-ido-mode 1))


(use-package ido-vertical-mode
      :init (ido-vertical-mode -1))

(use-package ido-completing-read+
      :init (ido-ubiquitous-mode 1))    




(use-package ido-hacks)

(use-package idomenu
    :bind ("C-c i" . idomenu))



(use-package ido-grid-mode
  :init

  (setq ido-grid-mode-max-columns 30
      ido-grid-mode-max-rows 6
      ido-grid-mode-min-rows 6
      ido-grid-mode-prefix-scrolls t
      ido-grid-mode-scroll-down #'ido-grid-mode-next-row
      ido-grid-mode-scroll-up #'ido-grid-mode-previous-row
      ido-grid-mode-order t
      ido-grid-mode-start-collapsed nil)
 
  
  (ido-grid-mode 1))

