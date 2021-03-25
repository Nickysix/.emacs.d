(define-key ido-completion-map (kbd "C-n") 'ido-next-match)
(define-key ido-completion-map (kbd "<down>") 'ido-next-match)
(define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
(define-key ido-completion-map (kbd "<up>") 'ido-prev-match)



(global-set-key (kbd "C-.") #'imenu-anywhere)

(global-set-key [?\e ?\M-x] 'lacarte-execute-command)


(global-set-key (kbd "C-h f") #'helpful-callable)

(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)


(global-set-key (kbd "C-c C-d") #'helpful-at-point)
(global-set-key (kbd "C-h F") #'helpful-function)

(global-set-key (kbd "C-h C") #'helpful-command)


