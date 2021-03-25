(use-package org
  :bind (:map org-mode-map
         ("RET" . org-return-indent)
         ("M-p" . outline-previous-visible-heading)
         ("M-n" . outline-next-visible-heading)
         ("s-t" . org-todo)
         ("M-[" . org-metaleft)
         ("M-]" . org-metaright)
         :map org-src-mode-map
         ([remap evil-write] . org-edit-src-save))
  :straight org-plus-contrib
  :mode ("\\.org$" . org-mode)

  :hook
  ((org-clock-out org-clock-in) . jjin/save-last-clock-buffer)

  :custom
  (org-catch-invisible-edits 'show-and-error)
  (org-return-follows-link t)
  (org-export-dispatch-use-expert-ui t)
  (org-clock-out-remove-zero-time-clocks t)
  (org-latex-create-formula-image-program 'imagemagick)
  (org-latex-listings 'minted)
  (org-tags-column -80)
  (org-enforce-todo-dependencies t)
  (org-enforce-todo-checkbox-dependencies  t)
  (org-pretty-entities t)
  (org-src-fontify-natively t)
  (org-list-allow-alphabetical t)
  (org-special-ctrl-a/e t)
  (org-deadline-warning-days 7)

  :init
  (setq org-agenda-custom-commands
        '(("s" "Schoolwork"
           ((agenda "" ((org-agenda-ndays 14)
                        (org-agenda-start-on-weekday nil)
                        (org-agenda-prefix-format " %-12:c%?-12t% s")))
            (tags-todo "CATEGORY=\"Schoolwork\""
                       ((org-agenda-prefix-format "%b")))))

          ("r" "Reading"
           ((tags-todo "CATEGORY=\"Reading\""
                       ((org-agenda-prefix-format "%:T ")))))
          ("m" "Movies"
           ((tags-todo "CATEGORY=\"Movies\""
                       ((org-agenda-prefix-format "%:T ")))))))
    (setq
    ;;  org-latex-pdf-process (list "latexmk -shell-escape -pdf %f")

    org-entities-user
    '(("supsetneqq" "\\supsetneqq" t "" "[superset of above not equal to]"
       "[superset of above not equal to]" "⫌")
      ("subseteq" "\\subseteq" t "" "[subset of above equal to]" "subset of above equal to" "⊆")
       ("subsetneqq" "\\subsetneqq" t "" "[suberset of above not equal to]"
         "[suberset of above not equal to]" "⫋")))

  :config
  (setq org-agenda-files '("~/agenda/"))
  ;; (plist-put org-format-latex-options :scale 1.5)

  (setq org-latex-packages-alist
    '(("" "minted") ("usenames,dvipsnames,svgnames" "xcolor")))

  (defun my-org-autodone (n-done n-not-done)
    "Switch entry to DONE when all subentries are done, to TODO otherwise."
    (let (org-log-done org-log-states)   ; turn off logging
      (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

  (add-hook 'org-after-todo-statistics-hook 'my-org-autodone)

  (org-babel-do-load-languages
    'org-babel-load-languages
    '((emacs-lisp . t)
       (latex     . t)
       (python    . t)
       ;; FIXME: Make this contingent on ob-ipython
       ;; (ipython   . t)
       (R         . t)
       (octave    . t)
       (matlab    . t)
       (shell     . t)))

  (setq org-confirm-babel-evaluate nil)
  (setq org-export-use-babel t)

  (setq org-latex-minted-options
    '(("linenos" "true")
       ("fontsize" "\\scriptsize")
       ("frame" "lines")))

  (setq org-export-latex-hyperref-format "\\ref{%s}")

  (setq
    org-src-window-setup 'current-window
    org-agenda-window-setup 'current-window)

  (setq org-blank-before-new-entry
    '((heading . true)
       (plain-list-item . auto)))

  ;; FIXME: parameter-ize dir `agenda'
  (setq org-default-notes-file "~/agenda/notes.org")

  (setq org-capture-templates
        `(("r" "Reading" entry (file "~/proj/lists/read.org")
           "* TODO %?\n  Entered on %U\n  %i")
          ("t" "Task" entry (file "")
           "* TODO %?\n %i")))

  (setq org-refile-targets '((nil . (:maxlevel . 10))))

  (setq org-export-with-smart-quotes t)
  (with-eval-after-load 'ace-link
    ;; (bind-keys :map org-agenda-mode-map
    ;;            ("M-o" . ace-link-org))
    (bind-keys :map org-mode-map
               ("M-o" . ace-link-org))))

(use-package ox-latex
  :after org)

(use-package ox-bibtex
  :after org)

(use-package ox-md
  :after org)

(use-package ob-python
  :after org
  :init
  (setq org-babel-python-command "python3"))

(use-package toc-org
  :disabled t
  :after org
  :config
  (add-hook 'org-mode-hook 'toc-org-enable))

(use-package evil-org
  :straight t
  :after (evil org)
  :diminish evil-org-mode
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (evil-org-set-key-theme)
  (setq evil-org-special-o/O '(table-row)))

(use-package org-sticky-header
  :disabled t
  :straight t
  :hook (org-mode . org-sticky-header-mode)
  :init
  (setq org-sticky-header-always-show-header nil)
  (setq org-sticky-header-outline-path-separator " > ")
  (setq org-sticky-header-full-path 'full))

(use-package org-chef
  :straight t)

(use-package org-download
  :straight t)