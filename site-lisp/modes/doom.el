




(use-package doom-themes
   :straight nil
   :config
   (load-theme 'doom-Iosvkem t)
   (doom-themes-neotree-config)
   (doom-themes-org-config))


(use-package doom-neotree
  :straight nil
  :config
  (setq doom-neotree-enable-file-icons t))


(use-package doom-modeline
  :straight nil
  :init
  (progn
    (setq doom-modeline-height 25)
    (setq doom-modeline-bar-width 3)
    (setq doom-modeline-buffer-file-name-style 'truncate-upto-project)
    (setq doom-modeline-icon t)
    (setq doom-modeline-major-mode-icon t)
    (setq doom-modeline-major-mode-color-icon t)
    (setq doom-modeline-minor-modes t)
    (setq doom-modeline-enable-word-count t)
    (setq doom-modeline-checker-simple-format t)
    (setq doom-modeline-persp-name t)
    (setq doom-modeline-lsp t)
    (setq doom-modeline-env-version t))
  :config (doom-modeline-mode 1))






















































