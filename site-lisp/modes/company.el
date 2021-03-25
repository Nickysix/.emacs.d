;;; -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(use-package company
  :straight nil
  :defer t
  :custom ((company-idle-delay 0.50)
           (company-minimum-prefix-length 1))
  :hook (after-init . global-company-mode)
  :bind (:map company-active-map
         ("M-n" . nil)
         ("M-p" . nil)
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         ("SPC" . company-abort)))