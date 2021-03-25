



(setq user-full-name "Nick Robitaille (Nickysix)"
      user-mail-address "computerscience4747@gmail.com")

(setq
  inhibit-startup-screen t
  inhibit-startup-message t
  initial-scratch-message nil
  visible-bell nil
  use-dialog-box nil)


(setq custom-safe-themes t)


;; Reuse frames when popping up
(add-to-list 'display-buffer-alist
             '("." nil (reusable-frames . t)))

;; Cycle when popping mark ring
(setq set-mark-command-repeat-pop t)


;; Recursive grep by default
(setq grep-command "grep --color -nH --null -r -e ")


;; Disable ad-handle-definition warnings
(setq ad-redefinition-action 'accept)

(blink-cursor-mode 0)

(setq mouse-yank-at-point t)

(setq-default fill-column 80)


(setq uniquify-buffer-name-style 'forward)

;;(set-frame-parameter nil 'unsplittable t)
(defalias 'yes-or-no-p #'y-or-n-p)
(setq frame-resize-pixelwise t)
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)
(setq auto-revert-remote-files t)
(global-visual-line-mode t)
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)
(electric-pair-mode 1)
(global-linum-mode 1)
(show-paren-mode 1)
(scroll-bar-mode 1)
(tool-bar-mode -1)
(menu-bar-mode 1)
(setq blink-cursor-blinks 0)

(setq url-queue-parallel-processes 3)
(setq url-queue-timeout 30)


;; move modeline to the top of the buffer
;;(setq-default header-line-format mode-line-format)
;;(setq-default mode-line-format nil)


;; Vertical window divider
(setq window-divider-default-right-width 3)
(setq window-divider-default-places 'right-only)
(window-divider-mode)

(setq large-file-warning-threshold nil)
;;(setq large-file-warning-threshold 50000000) ;; 50mb

(setq scroll-step            1
      scroll-conservatively  10000
      scroll-margin 3)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default tab-stop-list (number-sequence 2 120 2))
(setq sh-basic-offset 2)



(setq tramp-verbose 4)

(setq next-line-add-newlines t)

(fringe-mode '(4 . 0))

;;(setq default-frame-alist
;;  '((cursor-type . bar)))

(setq-default cursor-type '(bar . 1))

(set-cursor-color "green")
