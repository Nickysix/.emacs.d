;;; -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:



(use-package helpful
  :straight nil
  :bind (("C-h f" . #'helpful-callable)
         ("C-h v" . #'helpful-variable)
         ("C-h k" . #'helpful-key)
         :map helpful-mode-map
         ("g"     . #'helpful-update)))