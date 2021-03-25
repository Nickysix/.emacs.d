

(require 'theme-looper)

(global-set-key (kbd "C-}") 'theme-looper-enable-next-theme)
(global-set-key (kbd "C-{") 'theme-looper-enable-previous-theme)
(global-set-key (kbd "C-\\") 'theme-looper-enable-random-theme)
(global-set-key (kbd "C-|") 'theme-looper-select-theme)
(global-set-key (kbd "C-M-|") 'theme-looper-select-theme-from-all)


(theme-looper-set-favorite-themes '(wombat tango-dark wheatgrass))

(theme-looper-set-favorite-themes-regexp "dark")

(theme-looper-reset-themes-selection)

(theme-looper-reload-current-theme)

(theme-looper-set-ignored-themes '(cobalt))

(theme-looper-set-ignored-themes-regexp "green")














(use-package jazz-theme
  :straight nil
  :config (load-theme 'jazz))
  
  
;;(use-package color-theme-sanityinc-tomorrow
;;   :ensure t
;;   :config
;;   (load-theme 'sanityinc-tomorrow-bright t))

;; (use-package gruvbox-theme
;;   :ensure t
;;   :config
;;   (load-theme 'gruvbox t))
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  