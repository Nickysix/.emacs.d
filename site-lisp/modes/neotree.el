




(use-package neotree
  :straight nil
  :bind ("<f8>" . 'neotree-toggle)
  :init
  (setq neo-window-width 50)  
  (setq inhibit-compacting-font-caches t)  
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))  
  (setq neo-smart-open t)  
  (setq-default neo-show-hidden-files t))

