(use-package key-chord
  :straight nil
  :config
  (key-chord-mode 1)
  (setq key-chord-one-keys-delay 0.02
        key-chord-two-keys-delay 0.03))
        
;; examples need to reconfigure
        
  (key-chord-define-global ",." 'end-of-buffer)
  ;; FIXME: accidentally triggered too often
  (key-chord-define-global "zx" 'beginning-of-buffer)

  (key-chord-define-global "qw" 'delete-window)
  (key-chord-define-global "qp" 'delete-other-windows)

  (key-chord-define-global "fk" 'other-window)
  (key-chord-define-global "jd" 'rev-other-window)

  (key-chord-define-global "JJ" 'previous-buffer)
  (key-chord-define-global "KK" 'next-buffer)


  (key-chord-define-global "hh" 'helpful-at-point)
  (key-chord-define-global "hk" 'helpful-key)
  (key-chord-define-global "hv" 'helpful-variable)

  ;; no bueno: e.g. "pathfinder", "highfidelity"
  ;; (key-chord-define-global "hf" 'helpful-function)

  (key-chord-define-global "vn" 'split-window-vertically-and-switch)
  (key-chord-define-global "vm" 'split-window-vertically-and-switch) ; ergodox
  (key-chord-define-global "hj" 'split-window-horizontally-and-switch)

  (key-chord-define-global "jm" 'my/duplicate-line-or-region)
  (key-chord-define-global "fv" 'comment-line)

  (key-chord-define-global "kl" 'er/expand-region)

  (key-chord-define-global "xx" 'execute-extended-command)
  (key-chord-define-global "xf" 'find-file)

  (key-chord-define-global "l;" 'repeat))        