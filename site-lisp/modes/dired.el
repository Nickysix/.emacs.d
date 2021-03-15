


;;; dired-hacks


(use-package async
            :ensure t
            :config (async-bytecomp-package-mode 1))
    
   (autoload 'dired-async-mode "dired-async.el" nil t)
   
   (dired-async-mode 1)


(use-package dired
  :bind (:map dired-mode-map
              ("C-c C-e" . wdired-change-to-wdired-mode))
  :init
  (setq dired-dwim-target t
        dired-recursive-copies 'top
        dired-recursive-deletes 'top
        dired-listing-switches "-alh")
  :config
  (add-hook 'dired-mode-hook 'dired-hide-details-mode))


ep-dired' is loaded
            :bind (:map dired-mode-map
                        ("P" . peep-dired)))
    
    (use-package dired-subtree
            :ensure t
            :bind (:map dired-mode-map
                        ("i" . dired-subtree-insert)
                        (";" . dired-subtree-remove)
                        ("<tab>" . dired-subtree-toggle)
                        ("<backtab>" . dired-subtree-cycle)))
    
    (use-package dired-collapse :ensure t)
    
    (use-package dired-filter :ensure t)
    (use-package dired-narrow
            :ensure t
            :bind (:map dired-mode-map
                        ("C-S-f" . dired-narrow)))
    
    (use-package dired-ranger :ensure t)
    
    (use-package dired-quick-sort
            :config (dired-quick-sort-setup))
    
    (setq dired-listing-switches "-lXGh --group-directories-first"
          dired-recursive-copies 'always
          dired-recursive-deletes 'top
          global-auto-revert-non-file-buffers t
          auto-revert-verbose nil
          dired-dwim-target t
          wdired-allow-to-change-permissions t)
    
    (use-package dired-filetype-face
            :ensure t
            :config (require 'dired-filetype-face))
    
    (define-key dired-mode-map "ö" 'dired-toggle-read-only)

;;; dired-hydra
(defhydra hydra-dired (:hint nil :color pink)
  "
_+_ mkdir          _v_iew           _m_ark             _(_ details        _i_nsert-subdir    wdired
_C_opy             _O_ view other   _U_nmark all       _)_ omit-mode      _$_ hide-subdir    C-x C-q : edit
_D_elete           _o_pen other     _u_nmark           _l_ redisplay      _w_ kill-subdir    C-c C-c : commit
_R_ename           _M_ chmod        _t_oggle           _g_ revert buf     _e_ ediff          C-c ESC : abort
_Y_ rel symlink    _G_ chgrp        _E_xtension mark   _s_ort             _=_ pdiff
_S_ymlink          ^ ^              _F_ind marked      _._ toggle hydra   \\ flyspell
_r_sync            ^ ^              ^ ^                ^ ^                _?_ summary
_z_ compress-file  _A_ find regexp
_Z_ compress       _Q_ repl regexp

T - tag prefix
"
  ("\\" dired-do-ispell)
  ("(" dired-hide-details-mode)
  (")" dired-omit-mode)
  ("+" dired-create-directory)
  ("=" diredp-ediff)         ;; smart diff
  ("?" dired-summary)
  ("$" diredp-hide-subdir-nomove)
  ("A" dired-do-find-regexp)
  ("C" dired-do-copy)        ;; Copy all marked files
  ("D" dired-do-delete)
  ("E" dired-mark-extension)
  ("e" dired-ediff-files)
  ("F" dired-do-find-marked-files)
  ("G" dired-do-chgrp)
  ("g" revert-buffer)        ;; read all directories again (refresh)
  ("i" dired-maybe-insert-subdir)
  ("l" dired-do-redisplay)   ;; relist the marked or singel directory
  ("M" dired-do-chmod)
  ("m" dired-mark)
  ("O" dired-display-file)
  ("o" dired-find-file-other-window)
  ("Q" dired-do-find-regexp-and-replace)
  ("R" dired-do-rename)
  ("r" dired-do-rsynch)
  ("S" dired-do-symlink)
  ("s" dired-sort-toggle-or-edit)
  ("t" dired-toggle-marks)
  ("U" dired-unmark-all-marks)
  ("u" dired-unmark)
  ("v" dired-view-file)      ;; q to exit, s to search, = gets line #
  ("w" dired-kill-subdir)
  ("Y" dired-do-relsymlink)
  ("z" diredp-compress-this-file)
  ("Z" dired-do-compress)
  ("q" nil)
  ("." nil :color blue))

(define-key dired-mode-map "." 'hydra-dired/body)



(use-package dired-hacks-utils)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)
(use-package)








(provide 'dired)
