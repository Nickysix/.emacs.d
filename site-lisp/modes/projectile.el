

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)


(use-package projectile
  :ensure nil
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))


(provide 'projectile)
