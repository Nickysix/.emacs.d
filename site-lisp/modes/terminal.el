




(use-package shell-pop
  :init
  (setq shell-pop-full-span t)
  :bind (("C-c s" . shell-pop)))

(use-package vterm)

(use-package vterm
  :ensure-system-package cmake
  :straight t
  :hook
  (vterm-mode . goto-address-mode)
  :custom
  (vterm-shell "/bin/bash")
  (vterm-kill-buffer-on-exit t))

(use-package vterm-toggle
  :bind (("H-z" . vterm-toggle)
         ("H-F" . vterm-toggle-forward)
         ("H-B" . vterm-toggle-backward)))
























