(use-package tramp
  :custom
  (tramp-default-method "ssh")
  (password-cache-expiry nil)
  :config
  (add-to-list 'tramp-remote-path "~/bin"))