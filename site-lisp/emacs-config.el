;;; -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(use-package better-scroll
  :init
  (setq better-scroll-align-type 'relative
        better-scroll-allow-boundary-movement t))


(use-package centaur-tabs
  :init
  (setq centaur-tabs-set-icons nil
        centaur-tabs-style "wave"
        centaur-tabs-set-modified-marker t
        centaur-tabs-modified-marker "*"))



(use-package which-key
  :ensure t
  :defer t
  :custom (echo-keystrokes 0.00000001)
  :hook (after-init . which-key-mode))



(use-package company
  :ensure t
  :defer t
  :custom ((company-idle-delay 0.75)
           (company-minimum-prefix-length 3))
  :hook (after-init . global-company-mode)
  :bind (:map company-active-map
         ("M-n" . nil)
         ("M-p" . nil)
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         ("SPC" . company-abort)))








































(use-package company
  :init
  (setq company-frontends '(company-pseudo-tooltip-frontend
                            company-echo-metadata-frontend)
        company-require-match nil
        company-tooltip-align-annotations t
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-eclim-auto-save nil
        company-minimum-prefix-length 0
        company-idle-delay 0.1
        company-selection-wrap-around 'on)
  (setq company-backends
        (append
         ;; --- Internal ---
         '(company-capf company-semantic)
         '(company-keywords)
         '(company-abbrev company-dabbrev company-dabbrev-code)
         '(company-files)
         '(company-etags company-gtags)
         '(company-yasnippet)
         ;; --- External ---
         '(company-emoji)))
  :config
  (with-eval-after-load 'company (require 'jcs-company) (global-company-mode t)))


(use-package company-fuzzy
  :init
  (setq company-fuzzy-sorting-backend 'flx
        company-fuzzy-prefix-on-top nil
        company-fuzzy-history-backends '(company-yasnippet)
        company-fuzzy-trigger-symbols '("." "->" "<" "\"" "'"))
  (with-eval-after-load 'company (global-company-fuzzy-mode t)))

(use-package company-quickhelp
  :init
  (setq company-quickhelp-delay 0.3
        company-quickhelp-color-background "#FFF08A")
  (with-eval-after-load 'company (company-quickhelp-mode t)))

(use-package company-quickhelp-terminal
  :init
  (with-eval-after-load 'company-quickhelp
    (unless (display-graphic-p) (company-quickhelp-terminal-mode 1))))


(use-package line-reminder
  :init
  (setq line-reminder-show-option (if (display-graphic-p) 'indicators 'linum))
  (unless (display-graphic-p)
    (setq line-reminder-saved-sign " |"
          line-reminder-modified-sign " |")))



(use-package keypression
  :config
  (setq keypression-ignore-mouse-events
        (append keypression-ignore-mouse-events
                '(switch-frame menu-bar tool-bar tab-bar))))


(use-package indent-control
  :init
  (setq indent-control-records
        '((actionscript-mode     . 4)
          (c-mode                . 4)
          (c++-mode              . 4)
          (csharp-mode           . 4)
          (css-mode              . 2)
          (dockerfile-mode       . 2)
          (elisp-mode            . 2)
          (emacs-lisp-mode       . 2)
          (go-mode               . 4)
          (groovy-mode           . 4)
          (java-mode             . 4)
          (jayces-mode           . 4)
          (js-mode               . 2)
          (js2-mode              . 2)
          (json-mode             . 2)
          (kotlin-mode           . 4)
          (less-css-mode         . 2)
          (lisp-mode             . 2)
          (lisp-interaction-mode . 2)
          (lua-mode              . 4)
          (nasm-mode             . 4)
          (nix-mode              . 2)
          (nxml-mode             . 2)
          (objc-mode             . 4)
          (python-mode           . 4)
          (rjsx-mode             . 2)
          (ruby-mode             . 2)
          (rust-mode             . 4)
          (scss-mode             . 2)
          (shader-mode           . 4)
          (ssass-mode            . 2)
          (sql-mode              . 1)
          (typescript-mode       . 4)
          (web-mode              . 2)
          (yaml-mode             . 2))))


(use-package highlight-indent-guides
  :init
  (setq highlight-indent-guides-method 'character
        highlight-indent-guides-character ?\|
        highlight-indent-guides-responsive 'top))

(use-package highlight-numbers
  :config
  (set-face-attribute 'highlight-numbers-number nil
                      :foreground "#9BCEA3"))

(use-package hl-todo
  :init
  (setq hl-todo-highlight-punctuation "")
  (setq hl-todo-keyword-faces
        '(("HOLD" . "#d0bf8f")
          ("TODO" . "red")
          ("NEXT" . "#dca3a3")
          ("THEM" . "#dc8cc3")
          ("PROG" . "#7cb8bb")
          ("OKAY" . "#7cb8bb")
          ("DONT" . "#5f7f5f")
          ("FAIL" . "#8c5353")
          ("DONE" . "#afd8af")
          ("NOTE"   . "dark green")
          ("KLUDGE" . "#d0bf8f")
          ("HACK"   . "#d0bf8f")
          ("TEMP"   . "turquoise")
          ("FIXME"  . "red")
          ("XXX+"   . "#cc9393")
          ("\\?\\?\\?+" . "#cc9393")

          ("ATTENTION" . "red")
          ("STUDY" . "yellow")
          ("IMPORTANT" . "yellow")
          ("CAUTION" . "yellow")
          ("OPTIMIZE" . "yellow")
          ("DESCRIPTION" . "dark green")
          ("TAG" . "dark green")
          ("OPTION" . "dark green")
          ("DEBUG" . "turquoise")
          ("DEBUGGING" . "turquoise")
          ("TEMPORARY" . "turquoise")
          ("SOURCE" . "PaleTurquoise2")
          ("URL" . "PaleTurquoise2")
          ("IDEA" . "green yellow")
          ("OBSOLETE" . "DarkOrange3")
          ("DEPRECATED" . "DarkOrange3")
          ("TOPIC" . "slate blue")
          ("SEE" . "slate blue")))
  :config
  (defun jcs--hl-todo--inside-comment-or-string-p ()
    "Redefine `hl-todo--inside-comment-or-string-p', for accurate highlighting."
    (jcs-inside-comment-or-string-p))
  (advice-add #'hl-todo--inside-comment-or-string-p :override #'jcs--hl-todo--inside-comment-or-string-p))


(use-package flycheck-grammarly
  :init
  (with-eval-after-load 'flycheck (require 'flycheck-grammarly)))


(use-package eww
  :init
  (setq eww-search-prefix "https://www.google.com/search?q="))


(use-package dashboard
  :init
  (setq dashboard-banner-logo-title "[J C S • E M A C S]"
        dashboard-footer-icon ""
        dashboard-footer-messages
        `(,(format "Copyright (c) %s %s" (jcs-get-year-only) (jcs-copyright-info)))
        dashboard-items '((recents . 10)
                          (projects . 10)
                          ;;(bookmarks . 10)
                          ;;(agenda . 10)
                          ;;(registers . 10)
                          )
        dashboard-item-shortcuts '((recents . "r")
                                   (bookmarks . "m")
                                   (projects . "p")
                                   (agenda . "a")
                                   (registers . "e")
                                   (ls-directories . "d")
                                   (ls-files . "f"))
        dashboard-center-content t
        dashboard-set-navigator nil
        dashboard-projects-backend 'project-el
        ;; Truncate style
        dashboard-path-style 'truncate-middle
        dashboard-recentf-show-base 'align
        dashboard-projects-show-base 'align)
  :config
  (setq initial-buffer-choice (lambda () (get-buffer dashboard-buffer-name)))

  (require 'dashboard-ls)
  (defun jcs--dashboard-insert-page-break--advice-before (&rest _)
    "Re-new page separator."
    (setq dashboard-page-separator (format "\n%s\n" (jcs-env-separator))))
  (advice-add #'dashboard-insert-page-break :before #'jcs--dashboard-insert-page-break--advice-before)

  (dashboard-setup-startup-hook))

(use-package dashboard-ls
  :config
  (let ((dashboard-lst-items '((ls-directories . 5) (ls-files . 5))))
    (setq dashboard-items (append dashboard-lst-items dashboard-items))))














































































