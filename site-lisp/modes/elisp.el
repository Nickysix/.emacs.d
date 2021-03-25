



(use-package elisp-mode
  :bind (("C-c C-f" . find-function)
         ("C-c C-v" . find-variable)))





;; nifty documentation at point for lisp files
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
