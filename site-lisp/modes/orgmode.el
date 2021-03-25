




(use-package deft
  :straight nil
  :init
  (setq deft-directory "~/norg")
  (setq deft-recursive t)
  (setq deft-use-filename-as-title t)
  (setq deft-default-extension "org")
  (setq deft-extensions '("org"))
  (setq deft-use-filter-string-for-filename t)
  (setq deft-file-naming-rules '((noslash . "-")
                                 (nospace . "-")
                                 (case-fn . downcase)))
  (setq deft-text-mode 'org-mode)
  (setq deft-org-mode-title-prefix t))

















(require 'ox)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;; GLOBAL Keybindings that can be added to .emacs
;; (global-set-key [f4] 'org-capture)
;; (global-set-key [f5] '(lambda () (interactive)(find-file "~/org/mygtd.org")))
;; (global-set-key [f6] 'org-todo-list)
;; (global-set-key [f7] 'org-agenda)

(setq org-image-actual-width 1800)
(setq org-log-done nil)
(setq org-startup-truncated nil)
(setq org-startup-indented t)
(setq-default truncate-lines nil)
(setq-default word-wrap t)

(setq org-directory (expand-file-name "~/norg"))
(setq org-default-notes-file (concat org-directory "/refile.org"))
(setq org-agenda-files '("~/norg"))
(setq org-startup-folded t)

(setq org-todo-keywords
      '(
        (sequence "IDEA(i)" "TODO(t)" "STARTED(s)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)")
        (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)")
        ))


(setq org-todo-keyword-faces
      '(("IDEA" . (:foreground "GoldenRod" :weight bold))
        ("NEXT" . (:foreground "IndianRed1" :weight bold))
        ("STARTED" . (:foreground "OrangeRed" :weight bold))
        ("WAITING" . (:foreground "coral" :weight bold))
        ("CANCELED" . (:foreground "LimeGreen" :weight bold))
        ("DELEGATED" . (:foreground "LimeGreen" :weight bold))
        ("SOMEDAY" . (:foreground "LimeGreen" :weight bold))
        ))


(setq org-todo-keywords
      '(
        (sequence "LINUX(L)" "EMACS(E)" "OCCULT(O)" "ASTRO(A)" "RESEARCH(R)" "|" "DONE(d)")
        (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)")
        ))


(setq org-todo-keyword-faces
      '(("LINUX" . (:foreground "#98971a" :weight bold))
        ("EMACS" . (:foreground "#b16286" :weight bold))
        ("OCCULT" . (:foreground "d65d0e" :weight bold))
        ("ASTRO" . (:foreground "coral" :weight bold))
        ("RESEARCH" . (:foreground "LimeGreen" :weight bold))
        ("DELEGATED" . (:foreground "LimeGreen" :weight bold))
        ("SOMEDAY" . (:foreground "LimeGreen" :weight bold))
        ))


(setq org-tag-persistent-alist
      '((:startgroup . nil)
        ("HOME" . ?h)
        ("RESEARCH" . ?r)
        ("TEACHING" . ?t)
        (:endgroup . nil)
        (:startgroup . nil)
        ("OS" . ?o)
        ("DEV" . ?d)
        ("WWW" . ?w)
        (:endgroup . nil)
        (:startgroup . nil)
        ("EASY" . ?e)
        ("MEDIUM" . ?m)
        ("HARD" . ?a)
        (:endgroup . nil)
        ("UCANCODE" . ?c)
        ("URGENT" . ?u)
        ("KEY" . ?k)
        ("BONUS" . ?b)
        ("noexport" . ?x)))

(setq org-tag-faces
      '(
        ("HOME" . (:foreground "GoldenRod" :weight bold))
        ("RESEARCH" . (:foreground "GoldenRod" :weight bold))
        ("TEACHING" . (:foreground "GoldenRod" :weight bold))
        ("OS" . (:foreground "IndianRed1" :weight bold))
        ("DEV" . (:foreground "IndianRed1" :weight bold))
        ("WWW" . (:foreground "IndianRed1" :weight bold))
        ("URGENT" . (:foreground "Red" :weight bold))
        ("KEY" . (:foreground "Red" :weight bold))
        ("EASY" . (:foreground "OrangeRed" :weight bold))
        ("MEDIUM" . (:foreground "OrangeRed" :weight bold))
        ("HARD" . (:foreground "OrangeRed" :weight bold))
        ("BONUS" . (:foreground "GoldenRod" :weight bold))
        ("UCANCODE" . (:foreground "GoldenRod" :weight bold))
        ("noexport" . (:foreground "LimeGreen" :weight bold))))

(setq org-fast-tag-selection-single-key t)
(setq org-use-fast-todo-selection t)


(setq org-reverse-note-order t)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/mygtd.org" "Tasks")
         "* TODO %?\nAdded: %U\n" :prepend t :kill-buffer t)
        ("i" "Idea" entry (file+headline "~/org/mygtd.org" "Someday/Maybe")
         "* IDEA %?\nAdded: %U\n" :prepend t :kill-buffer t)
        )
      )


(setq org-use-speed-commands nil)


(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (emacs-lisp . t)
   (org . t)
   (shell . t)
   (C . t)
   (python . t)
   (gnuplot . t)
   (octave . t)
   (R . t)
   (dot . t)
   (awk . t)
   ))


(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)


;; * org-roam :from :github jinnovation dotemacs

(use-package org-roam
  :straight t
  :hook
  (after-init . org-roam-mode)
  :init
  (setq org-roam-directory "~/roam")
  :custom
  (org-roam-tag-sources '(prop all-directories))
  :config
  (setq org-roam-graph-viewer (if (eq system-type 'darwin) "open" nil))
  (add-to-list 'org-roam-capture-templates
               '("r"
                "reading"
                plain
                (function org-roam--capture-get-point)
                "%?"
                :file-name "reading/%<%Y%m%d%H%M%S>-${slug}"
                :head "#+title: ${title}\n\n* 作者\n  "
                :unnarrowed t))
  (with-eval-after-load 'pretty-hydra
    (pretty-hydra-define jjin-hydra-roam
      (:title (with-octicon "pencil" "Notes (Roam)" 1 -0.05))
      ("Find"
       (("f" org-roam-find-file "file"))))
    (bind-key "s-r" 'jjin-hydra-roam/body)))

;; TODO: Add to jjin-hydra-roam a key to open the graph in browser
(use-package org-roam-server
  :after org-roam
  :straight t
  :config
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 8080
        org-roam-server-authenticate nil
        org-roam-server-export-inline-images t
        org-roam-server-serve-files nil
        org-roam-server-served-file-extensions '("pdf" "mp4" "ogv")
        org-roam-server-network-poll t
        org-roam-server-network-arrows nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20))













