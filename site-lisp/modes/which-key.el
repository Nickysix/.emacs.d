(use-package which-key
    :straight nil
    :diminish which-key-mode
    :init
    (which-key-setup-side-window-bottom)
    (setq which-key-side-window-max-height 0.25)
    (setq which-key-idle-delay 0.4)
    (which-key-mode))
    
    
    
    
(use-package which-key
  :ensure t
  :defer t
  :custom (echo-keystrokes 0.00000001)
  :hook (after-init . which-key-mode))    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    