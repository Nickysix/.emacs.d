




(use-package vterm
  :config
  (defun turn-off-chrome ()
    (hl-line-mode -1)
    (display-line-numbers-mode -1))
  :hook (vterm-mode . turn-off-chrome))

(use-package vterm-toggle
  :custom
  (vterm-toggle-fullscreen-p nil "Open a vterm in another window.")
  (vterm-toggle-scope 'projectile)
  :bind (("C-c t" . #'vterm-toggle)
         :map vterm-mode-map
         ("s-t" . #'vterm) ; Open up new tabs quickly
         ))



(use-package eterm-256color)
(use-package vterm)
(use-package multi-vterm)
(use-package vterm-toggle)

(global-set-key [f2] 'vterm-toggle)
(global-set-key [C-f2] 'vterm-toggle-cd)

;; you can cd to the directory where your previous buffer file exists
;; after you have toggle to the vterm buffer with `vterm-toggle'.
(define-key vterm-mode-map [(control return)]   #'vterm-toggle-insert-cd)

;Switch to next vterm buffer
(define-key vterm-mode-map (kbd "s-n")   'vterm-toggle-forward)
;Switch to previous vterm buffer
(define-key vterm-mode-map (kbd "s-p")   'vterm-toggle-backward)



(provide 'terminal)
