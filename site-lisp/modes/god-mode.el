(use-package god-mode
    straight nil
    :disabled nil
    :bind (("<escape>" . god-local-mode)
           ("C-x C-1" . delete-other-windows)
           ("C-x C-2" . split-window-below)
           ("C-x C-3" . split-window-right)
           ("C-x C-0" . delete-window)))

  (defun my-update-cursor ()
    (setq cursor-type (if (or god-local-mode buffer-read-only)
                            'box
                          'bar)))

  (add-hook 'god-mode-enabled-hook 'my-update-cursor)
  (add-hook 'god-mode-disabled-hook 'my-update-cursor)