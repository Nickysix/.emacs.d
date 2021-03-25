(use-package nvm
  :demand)

(if (file-exists-p (expand-file-name "~/.nvm"))
  (nvm-use "v12.15.0")) ;; default
  
  
(use-package add-node-modules-path
  :requires js2-mode)  
  
(setq typescript-indent-level 2)  
(setq css-indent-offset 2)  
; (require 'flymake-less)
(require 'css-eldoc)  

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.hb\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

;; everything is indented 2 spaces
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)