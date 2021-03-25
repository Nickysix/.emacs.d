;;; emacsclient + server configuration.







;; Make sure EDITOR and/or VISUAL is/are set to emacsclient.

(use-package server
  :straight nil
  :config
  (unless (server-running-p) (server-start)))