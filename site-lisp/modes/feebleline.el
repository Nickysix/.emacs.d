(use-package    feebleline
  :straight nil
  :config
         (setq feebleline-msg-functions
                      '((feebleline-line-number         :post "" :fmt "%5s")
                        (feebleline-column-number       :pre ":" :fmt "%-2s")
                        (feebleline-file-directory      :face feebleline-dir-face :post "")
                        (feebleline-file-or-buffer-name :face font-lock-keyword-face :post "")
                        (feebleline-file-modified-star  :face font-lock-warning-face :post "")
                        (feebleline-git-branch          :face feebleline-git-face :pre " : ")
                        (feebleline-project-name        :align right)))
                (feebleline-mode 1))