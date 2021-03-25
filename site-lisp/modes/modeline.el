

;; * remove modeline replace with lazycat status package





;; * spaceline
;; * spaceline-all-the-icons
;; * powerline


;; * mode-icons
;; * major-mode-icons
;; * airline-themes

(use-package mode-icons
  :ensure t
  :config
  (mode-icons-mode))



(use-package hide-mode-line
;;   :ensure t
;;   :config
;;   (add-hook 'neotree-mode-hook #'hide-mode-line-mode))


(use-package spaceline-config
;;  :ensure spaceline
;;  :pin melpa-stable
;;  :config
;;  (spaceline-emacs-theme))


(use-package powerline
;; :ensure t
;; :config (powerline-center-evil-theme))



(use-package smart-mode-line
  :straight t
  :custom
  (sml/theme 'respectful)
  :config
  (sml/setup)
  (smart-mode-line-enable))