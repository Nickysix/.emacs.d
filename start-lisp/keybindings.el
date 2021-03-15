(define-key ido-completion-map (kbd "C-n") 'ido-next-match)
(define-key ido-completion-map (kbd "<down>") 'ido-next-match)
(define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
(define-key ido-completion-map (kbd "<up>") 'ido-prev-match)



(global-set-key (kbd "C-.") #'imenu-anywhere)