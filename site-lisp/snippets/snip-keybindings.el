(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

(with-eval-after-load 'org
  (org-defkey org-mode-map (kbd "<C-S-up>")     'buf-move-up)
  (org-defkey org-mode-map (kbd "<C-S-down>")   'buf-move-down)
  (org-defkey org-mode-map (kbd "<C-S-left>")   'buf-move-left)
  (org-defkey org-mode-map (kbd "<C-S-right>")  'buf-move-right))