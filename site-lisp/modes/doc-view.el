




(use-package pdf-tools
  :straight nil
  :disabled nil
  :mode ("\\.pdf$" . pdf-view-mode)
  :config
  (pdf-tools-install)

  (let ((foreground-orig (car pdf-view-midnight-colors)))
    (setq pdf-view-midnight-colors
          (cons "white" "black")))
