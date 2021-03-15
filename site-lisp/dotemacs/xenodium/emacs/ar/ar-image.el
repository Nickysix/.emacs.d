;;; ar-image.el --- Image support.

;;; Commentary:
;; Image helpers.

(require 'ar-buffer)
(require 'ar-string)

;;; Code:

(defun ar/image-open-html-for-current-dir (use-base-64)
  "Open generated HTML for current dir path. With prefix, use base64 encoded images."
  (interactive "P")
  (ar/image-open-html-for-dir-path (ar/buffer-current-dir-path) 15 use-base-64))

(defun ar/image-open-html-for-dir-path (dir-path image-percentage-size &optional use-base-64)
  "Open generated HTML page for DIR-PATH, IMAGE-PERCENTAGE-SIZE, and IMAGE-EXTENSION.  For example: (ar/image-open-html-for-dir-path \"path/to/images/\" 10 \"jpg\")."
  (let ((body-html-template "<html><header><title>{{dir-path}}</title></header><body><h1>{{dir-path}}<h1/>{{images}}</body></html>")
        (image-html-template (format "<a href='{{image-path}}'><img width='%d%%' src='{{image-path}}'/></a>" image-percentage-size))
        (images-html "")
        (images-paths (directory-files (expand-file-name dir-path) t "\\(PNG\\|JPG\\|BMP\\|GIF\\|png\\|jpg\\|bmp\\|gif\\)$"))
        (output-file-path (format "/tmp/%d.html" (random 9999))))
    (assert (> (length images-paths) 0) nil "No images found")
    (mapc (lambda (image-path)
            (when use-base-64
              (setq image-path (format "data:image/%s;base64,%s"
                                       (file-name-extension image-path)
                                       (shell-command-to-string (format "base64 -i \"%s\"" image-path)))))
            (setq images-html
                  (concat images-html
                          (replace-regexp-in-string "{{image-path}}"
                                                    image-path image-html-template)
                          "\n")))
          images-paths)
    (append-to-file (ar/string-replace-regex-pairs body-html-template
                                                   (cons "{{dir-path}}" dir-path)
                                                   (cons "{{images}}" images-html))
                    nil
                    output-file-path)
    (browse-url-default-browser output-file-path)))

(provide 'ar-image)

;;; ar-image.el ends here
