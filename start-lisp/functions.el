

(defun display-startup-echo-area-message ()
  (message "Let the hacking begin!"))

(display-startup-echo-area-message)



;; instant access to init file.

;;(defun er-find-user-init-file ()
;;  "Edit the `user-init-file', in another window."
;;  (interactive)
;;  (find-file-other-window user-init-file))
;;
;;(global-set-key (kbd "C-c I") #'find-user-init-file)
;;(global-set-key [(shift f12)] #'find-user-init-file)


(defun init ()
  "open init file with shift f12"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key [(shift f12)] 'init)
;;(global-set-key (kbd "S-<f12>") 'init)


(defun refile ()
  "open gtd.org file with shift f11"
  (interactive)
  (find-file "~/norg/refile.org"))

(global-set-key (kbd "C-c r") 'refile)


(defun keybindings ()
  "open gtd.org file with shift f11"
  (interactive)
  (find-file "~/.emacs.d/start-lisp/keybindings.el"))

(global-set-key (kbd "C-c k") #'keybindings)


(defun functions ()
  "open gtd.org file with shift f11"
  (interactive)
  (find-file "~/.emacs.d/start-lisp/functions.el"))

(global-set-key (kbd "C-c f") #'functions)


(defun packages ()
  "open gtd.org file with shift f11"
  (interactive)
  (find-file "~/.emacs.d/start-lisp/packages.el"))

(global-set-key (kbd "C-c p") #'packages)


(defun variables ()
  "open gtd.org file with shift f11"
  (interactive)
  (find-file "~/.emacs.d/start-lisp/variables.el"))

(global-set-key (kbd "C-c v") #'variables)


(defun init-org ()
  "open gtd.org file with shift f11"
  (interactive)
  (find-file "~/.emacs.d/site-lisp/modes/orgmode.el"))

(global-set-key (kbd "C-c o") #'init-org)




;; * window manipulation functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun delete-window-balance ()
  "Delete window and rebalance the remaining ones."
  (interactive)
  (delete-window)
  (balance-windows))

(global-set-key (kbd "C-0") 'delete-window-balance)

(defun split-window-below-focus ()
  "Split window horizontally and move focus to other window."
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))

(global-set-key (kbd "C-2") 'split-window-below-focus)

(defun split-window-right-focus ()
  "Split window vertically and move focus to other window."
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))

(global-set-key (kbd "C-3") 'split-window-right-focus)


;; C-a goto beginning of line correction.

(defun beginning-of-line-or-indentation ()
  "Move to beginning of line, or indentation"
  (interactive)
  (if (bolp)
      (back-to-indentation)
    (beginning-of-line)))

(global-set-key [remap move-beginning-of-line]
                #'beginning-of-line-or-indentation)



































