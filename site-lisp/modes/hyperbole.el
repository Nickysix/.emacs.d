;; * hyperbole

(unless (package-installed-p 'hyperbole)
  (package-refresh-contents)
  (package-install 'hyperbole))
(require 'hyperbole)
