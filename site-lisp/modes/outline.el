

(add-hook 'outline-mode-hook
          (lambda ()
            (require 'outline-cycle)))

(add-hook 'outline-minor-mode-hook
          (lambda ()
            (require 'outline-magic)
            (define-key outline-minor-mode-map [(f10)] 'outline-cycle)))



;; * OUTSHINE-MODE

(use-package outshine
  :straight nil
  :config
  (add-hook 'prog-mode-hook 'outline-minor-mode)
  (add-hook 'emacs-lisp-mode-hook 'outshine-mode))

;; * OUTLINE-MINOR-FACES

(use-package outline-minor-faces
  :straight nil
  :after outline
  :config (add-hook 'outline-minor-mode-hook
                    'outline-minor-faces-add-font-lock-keywords))
                    
                    
(use-package backline
  :straight nil
  :after outline
  :config (advice-add 'outline-flag-region :after 'backline-update))                    
                    
                    
 (use-package bicycle
    :straight nil
    :after outline
    :bind (:map outline-minor-mode-map
                ([C-tab] . bicycle-cycle)
                ([S-tab] . bicycle-cycle-global)))

  (use-package prog-mode
    :straight nil
    :config
    (add-hook 'prog-mode-hook 'outline-minor-mode)
    (add-hook 'prog-mode-hook 'hs-minor-mode))                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
