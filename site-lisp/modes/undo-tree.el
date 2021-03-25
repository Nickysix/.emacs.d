(use-package undo-tree
  :straight nil
  :diminish undo-tree-mode
  :bind ("C-<backspace>" . undo-tree-undo)
  :config
  (global-undo-tree-mode))