












(use-package vscode-icon
  :straight nil
  :commands (vscode-icon-for-file))
  
(setq json-image (vscode-icon-for-file "somejsonfile.json"))
(insert-image json-image)

(setq emacs-image (vscode-icon-for-file "someemacsfile.el"))
(insert-image emacs-image)

(setq js-image (vscode-icon-for-file "somejsfile.js"))
(insert-image emacs-image)