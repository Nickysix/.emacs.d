;;; tategaki.el --- a simple �c
;;                           ��
;;                           �� typesetter

;;; Copyright (C) 1999 Tamakoshi Hiroki <hiroki-t@is.aist-nara.ac.jp>

;;; Last modified on Wed Apr  4 01:57:41 2001

;; Author: Tamakoshi Hiroki <hiroki-t@is.aist-nara.ac.jp>
;; Maintainer: Tamakoshi Hiroki <hiroki-t@is.aist-nara.ac.jp>
;; Created: 19 Mar 1999
;; Version: 1.3
;; Keywords: wp

;;{{{ Licence

;; ���̃\�t�g�E�F�A�� GNU ��ʌ��L�g�p�������ɂ͏]���܂���BGNU
;; General Public Licence �ɏ]���ꍇ�A�v���O�����͖��ۏ�(NO WARRANTY)
;; �Œ񋟂���܂����A�������Ђ�������܂��B�u���̃\�t�g�E�F�A���g����
;; �����N�����Ă����͒m��Ȃ���B�v�ƌ����킯�ł����A����ł͕��̍��
;; ��Ƃ��ĐӔC���Ȃ������܂��B���͂��̃\�t�g�E�F�A�ɂ��āA��������
;; �ʂ�ɓ����ł��낤���Ƃɂ��ĐӔC�������܂��B�Ⴆ�΃o�O������ꍇ�A
;; ����͎��̐ӔC�̉��Ŕ������Ă��邱�ƂɂȂ�܂��B
;; ����������ȏ�̐ӔC�ɂ��Ă͕����܂���B�Ⴆ�΁u���܂��̃\�t�g�E�F
;; �A���g������q�����o�����B�ǂ����Ă����B�v�Ȃǂł��B������񐢂�
;; ���ɂ̓o�^�t���C���ʂƂ������̂�����܂����A���̏ꍇ�͗��_�I������
;; �\���ŋ�̓I�ȏ؋��̒񎦂��K�v�ł��B

;;}}}

;;{{{ Introduction

;;{{{ Documentation:

;; 1. Set region, and invoke the program by typing M-x tategaki-region.
;; 2. Then it asks the number of letters per line, please answer.
;; 3. The result is what you will see.
;;
;; 1. �͈͂��w�肵�āAM-x tategaki-region ���ĉ������B
;; 2. ��s�̎����𕷂��Ă���̂œ��͂��܂��B
;; 3. �c�����ɐ��`����܂��B

;;}}}

;;{{{ Features:

;; * �[ �� �b �ɁA�� �� �� �ɂ���Ȃ� 90 �x��]�����Ƃ��ɐ������Ȃ�悤��
;;   �ϊ����܂��B��Ǔ_�Ȃǂ����l�ł��B
;; * �֑��������s���܂��B
;; * �ӏ������̒i�������s���܂��B
;; * �������̂܂܂ɂ��镶������w��o���܂��B
;; * heuristic �ɒi���������s���܂��B
;;   ��̓I�ɂ͍s�����X�y�[�X�Ŏn�܂�Ƃ��Ƌ�s������Ƃ��ł��B
;; * �b���ʂň͂܂ꂽ������䎌�Ƃ��ēƗ������s�ɂ��邱�Ƃ��o����̂ŁA
;;   �����ȂǂɓK���Ă��܂��B
;; * ���̕��͂ł̉��s�ʒu�ɏ]���ďc�������ɉ��s���邱�Ƃ��o����̂ŁA
;;   ���Ȃǂ̐��`���\�ł��B
;; * ����������ꍇ�͋�؂��ăy�[�W���Ƃɏc�ɕ��ׂ邱�Ƃ��o���܂��B

;;}}}

;;{{{ Tips:

;; * HTML �̒��ł͓����t�H���g�Ȃ�� <pre> </pre> �ň͂߂�
;;   ��̂��܂�������悤�ł��B
;;   �����Ԃ̌��ԂɊւ��Ď኱�̏C�����K�v�ȏꍇ������܂��B
;; * TeX �ł͑f���� pTeX ���g���܂��傤�B
;; * �c�����̃��[�������Ȃ��̂ł��B

;;}}}

;;{{{ Bugs:

;; * �{�C�Ńp�[�Y�A���C�A�E�g���l�������߂ɕ��G�ȃv���O������
;;   �Ȃ��Ă��܂��܂����B
;; * �ϊ��s�\�ȕ��������Ȃ肠��܂��B�Ⴆ�� ( ) �ɑΉ�����A
;;   �c�����Ɏg����L�������݂��܂���(����΋����ĉ�����)�B

;;}}}

;;{{{ A simple sample

;;                                           �� �� �� �� �H �� ��  �@��
;;                                           �� �� �� �� �c �� �{  �@��
;; ����ɂ��́B                              �� ��  �K�� �� �� ��  �@��
;;                                            �K�� ��  �M�� �v ��  �@��
;; ���{��͂�͂�c��������                   �@�� �� �a �� �� ��  �@��
;; �v���܂��񂩁H                  ��         �@�� �� �� �o �� ��  �@ �K
;; �c�������o���Ȃ��Ȃ�āA                   �@�� �� �� �� �� ��  �@ �@
;; �a��ł��܂���B���邢��                   �@�d �� �� �� �� �c  �@ �@
;; �����̋��������̂��d�����ł��B             �@�� �� �� �� �� ��  �@ �@

;;}}}

;;{{{ Feature Work:

;; * �c�����ɂ������̂��������ɖ߂��@�\���l����B
;; * HTML�o�͂�������������B
;;   (HTML�o�͍͂��̂Ƃ��남�܂��̂悤�Ȃ��̂��Ǝv���ĉ�����)

;;}}}

;;{{{ History:

;; 1999�N03��19��: �ꂩ���蒼���Ă݂�B
;; 1999�N03��15��: �Ȃ�ƂȂ����J���Ă݂�B
;;                 http://mimi.aist-nara.ac.jp/%7Ehiroki-t/Distribution/Tategaki/

;;}}}

;;}}}

;;; Code:

;;{{{ variables and functions

;;{{{ customisable variables

(require 'cl)

(defvar tategaki-original
  "Emacs\\|NHK"
  "�������̂܂܂ɂȂ��Ă��ė~������������w�肷�邽�߂̐��K�\���B")

(defvar tategaki-itemize
  "^\\( *\\)\\(��\\|�E\\|([0-9]*)\\|\\[[0-9]*\\]\\|[0-9]*\\.\\|([a-zA-z])\\|\\[[a-zA-z]\\]\\)"
  "�ӏ��������w�肷�邽�߂̐��K�\���B")

(defvar tategaki-original-limit 2
  "���p��������A���̒����܂ł͉������ŕ\�����܂��B")

(defvar tategaki-return-immediately-means-new-paragraph nil
  "���̒l�� nil �łȂ��ꍇ�A
�c�����ɂ����Ƃ��̉��s�ʒu�͌��̕��͂̉��s�ʒu�ɏ]���܂��B
�Ȃ̂ŁA�����Ȃǂ̎��ɂ����ĉ��s�ʒu���d�v�Ȃ��̂�
t �ɂ���Ƃ����Ǝv���܂��B")

(defvar tategaki-bracket-make-new-line nil
  "���̒l�� nil �łȂ��Ƃ��A�b���ʕ�����Ɨ������s�ɂ��܂��B
�����Ȃǂł͗L���ł��傤�B")

(defvar tategaki-fill "-"
  "���̒l�� nil �łȂ��Ƃ��A
���`���ʂ̉����� `fill-column' �̒l�ȉ��ɂ��A�c��͉��ɑ����܂��B
�܂��A���̂Ƃ����̒l�Ńy�[�W�̋�؂���������܂��B
�]���āAnil �ȊO�̏ꍇ�͕�������w�肵�ĉ������B")

(defvar tategaki-brackets '(?�u . ?�v)
  "���ʂƂ��Ĉ����L���B
car �����J�����ʂ� cdr ���������ʁB")

(defvar tategaki-default-length 20
  "��s�̒����B")

;;}}}

;;{{{ auxiliary functions

(defun tategaki-string-to-char-list (string)
  (cond ((string-match "20" emacs-version)
         (mapcar 'identity string))
        (t
         (string-to-char-list string))))

(defun tategaki-char-list-to-string (list)
  (apply 'concat
         (mapcar (lambda (char)
                   (char-to-string char))
                 list)))
                                        ;   (cond ((string-match "20" emacs-version)
                                        ;    (char-list-to-string list))
                                        ;   (t
                                        ;    (apply 'concat
                                        ;       (mapcar (lambda (char)
                                        ;             (char-to-string char))
                                        ;           list)))))

(defun tategaki-fill-line (tobe-filled-list number)
  (reverse (append (make-list (- (1+ number) (length tobe-filled-list)) ? )
                   tobe-filled-list)))

;;}}}

;;{{{ parsing and layouting engine

(defun tategaki-parse-hankaku-orig (subresult number end)
  (let ((limit (- number (length subresult)))
        (n 0))
    (while (and (< n limit) (< (point) end)
                (= 1 (char-width (char-after (point)))))
      (setq subresult (cons (char-after (point)) subresult)
            n (1+ n))
      (forward-char))
    (if (= 1 (save-excursion (forward-char)
                             (if (char-after (point))
                                 (char-width (char-after (point)))
                               0)))
        (cons t subresult)
      (cons nil subresult))))

(defun tategaki-parse-hankaku (hankaku-orig subresult number end)
  (let ((start (point))
        (n 0))
    (if hankaku-orig
        (tategaki-parse-hankaku-orig subresult number end)
      (let ((origp (save-excursion
                     (catch 'which
                       (while (and (<= n tategaki-original-limit)
                                   (< (point) end))
                         (if (= 1 (char-width (char-after (point))))
                             (setq n (1+ n))
                           (throw 'which n))
                         (forward-char))
                       (throw 'which nil)))))
        (if origp
            (let ((newsubresult (cons (tategaki-string-to-char-list (buffer-substring start (+ start n)))
                                      subresult)))
              (goto-char (+ start n))
              (if (= 1 (save-excursion (forward-char) (char-width (char-after (point)))))
                  (cons t newsubresult)
                (cons nil newsubresult)))
          (tategaki-parse-hankaku-orig subresult number end)
          )))))

(defvar tategaki-kinsoku-letters
  '(?�A ?�B ?�v))

(defun tategaki-parse (number start end)
  (let (orig-start orig-end
                   itemize-start item-start item-end item-space-length item-space-length-pre
                   (result '())
                   (subresult '())
                   (itemize-mode nil)
                   (may-change-paragraph nil)
                   (hankaku-orig nil)
                   )
    (save-excursion
      (if (re-search-forward tategaki-original end t 1)
          (setq orig-start (match-beginning 0)
                orig-end (match-end 0))))
    (save-excursion
      (if (re-search-forward tategaki-itemize end t 1)
          (setq itemize-start (match-beginning 0)
                item-start (match-beginning 2)
                item-end (match-end 2)
                item-space-length-pre (- (match-end 1) (match-beginning 1)))))
    (while (< (point) end)
      (cond
       ((and orig-start
             (= orig-start (point)))
        (setq subresult (cons (tategaki-string-to-char-list (buffer-substring orig-start orig-end)) subresult)
              may-change-paragraph nil)
        (goto-char orig-end)
        (save-excursion
          (if (re-search-forward tategaki-original end t 1)
              (setq orig-start (match-beginning 0)
                    orig-end (match-end 0))))
        )
       ((and itemize-start
             (= itemize-start (point)))
        (if subresult
            (setq subresult (tategaki-fill-line subresult number)
                  result (cons subresult result)
                  subresult '()))
        (setq item-space-length item-space-length-pre
              subresult (cons (tategaki-string-to-char-list (buffer-substring item-start item-end))
                              (make-list item-space-length ? ))
              may-change-paragraph nil
              itemize-mode t)
        (goto-char item-end)
        (save-excursion
          (if (re-search-forward tategaki-itemize end t 1)
              (setq itemize-start (match-beginning 0)
                    item-start (match-beginning 2)
                    item-end (match-end 2)
                    item-space-length-pre (- (match-end 1) (match-beginning 1)))))
        )
       ((and tategaki-bracket-make-new-line
             (= (char-after (point)) (car tategaki-brackets)))
        (if subresult
            (setq subresult (tategaki-fill-line subresult number)
                  result (cons subresult result)
                  subresult '()
                  may-change-paragraph nil
                  itemize-mode nil))
        (setq subresult (cons (char-after (point)) subresult))
        (forward-char)
        )
       ((and tategaki-bracket-make-new-line
             (= (char-after (point)) (cdr tategaki-brackets)))
        (if subresult
            (setq subresult (cons (char-after (point)) subresult)
                  subresult (tategaki-fill-line subresult number)
                  result (cons subresult result)
                  subresult '()
                  may-change-paragraph nil
                  itemize-mode nil))
        (forward-char)
        )
       ((< 1 (char-width (char-after (point))))
        (if (and (null subresult) itemize-mode)
            (setq subresult (make-list (1+ item-space-length) ? )))
        (setq subresult (cons (char-after (point)) subresult)
              may-change-paragraph nil)
        (forward-char)
        )
       ((= ?  (char-after (point)))
        (if (and (null subresult) itemize-mode)
            (setq subresult (make-list (1+ item-space-length) ? )))
        (if may-change-paragraph
            (setq subresult (tategaki-fill-line subresult number)
                  result (cons subresult result)
                  subresult '()
                  may-change-paragraph nil
                  itemize-mode nil
                  ))
        (setq subresult (cons (char-after (point)) subresult))
        (forward-char)
        )
       ((= ?\n (char-after (point)))
        (if tategaki-return-immediately-means-new-paragraph
            (if subresult
                (setq subresult (tategaki-fill-line subresult number)
                      result (cons subresult result)
                      subresult '()
                      itemize-mode nil))
          (if may-change-paragraph
              (setq subresult (tategaki-fill-line subresult number)
                    result (cons subresult result)
                    subresult '()
                    result (cons (tategaki-fill-line '() number) result)
                    may-change-paragraph nil
                    itemize-mode nil)
            (setq may-change-paragraph t)))
        (forward-char)
        )
       ((= 1 (char-width (char-after (point))))
        (let ((hankaku-parsed (tategaki-parse-hankaku hankaku-orig subresult number end)))
          (setq hankaku-orig (car hankaku-parsed)
                subresult (cdr hankaku-parsed)
                may-change-paragraph nil))
        )
       (t ()))
      (cond ((and (= number (length subresult)) (< (point) end))
             (if (memq (char-after (point)) tategaki-kinsoku-letters)
                 (progn
                   (setq subresult (reverse (cons (char-after (point)) subresult))
                         result (cons subresult result)
                         subresult '())
                   (forward-char))
               (setq subresult (reverse (cons ?  subresult))
                     result (cons subresult result)
                     subresult '())))
            ((= (1+ number) (length subresult))
             (setq result (cons subresult result)
                   subresult '()))
            (t ())))
    (if subresult
        (setq result (cons (tategaki-fill-line subresult number) result)))
    (reverse result)))

(defvar tategaki-tobe-converted-letters
  '(
    (?- . "|") (?| . "-") (?/ . "\\") (?\\ . "/")
                                        ; japanese characters
    (?�B . "�K") (?�A . "�M") (?�[ . "�b") (?�b . "�\")
    (?�� . "��") (?�� . "��") (?�� . "��") (?�� . "��")
    (?�u . "��") (?�v . "��")
    (?�� . "��") (?�� . "��") (?�F . "�d") (?�d . "�F")
                                        ; chinese characters
    )
  )

(defvar tategaki-offsets
  '((?�B . 1) (?�A . 1) (?�u . 1)
                          (?�v . -1)))

(defun tategaki-layout-max-width (line)
  (let ((max 0))
    (while line
      (let* ((box (car line))
             (boxwidth (if (listp box)
                           (string-width (tategaki-char-list-to-string box))
                         (char-width box))))
        (if (< max boxwidth)
            (setq max boxwidth)))
      (setq line (cdr line)))
    max))

(defun tategaki-layout (strings start number)
  (let ((columns 0))
    (while strings
      (let ((aline (car strings)))
        (let ((maxwidth (tategaki-layout-max-width aline)))
          (if (and tategaki-fill
                   (< fill-column (+ columns maxwidth)))
              (progn
                (forward-line (1+ number))
                (if (= 0 (string-width tategaki-fill))
                    ()
                  (let ((n 0)
                        (limit (/ fill-column (string-width tategaki-fill))))
                    (while (< n limit)
                      (insert tategaki-fill)
                      (setq n (1+ n)))))
                (newline) (newline)
                (setq start (point)
                      columns 0)))
          (if (= 0 columns)
              (progn
                (insert (make-string (+ number 2) ?\n)) ; ?
                (goto-char start)))
          (setq columns (+ columns maxwidth 1))
          (while aline
            (let ((box (car aline)))
              (if (listp box)
                  (let* ((word (tategaki-char-list-to-string box))
                         (word-width (string-width word))
                         (lwidth (/ (- maxwidth word-width) 2))
                         (rwidth (if (evenp (- maxwidth word-width))
                                     (/ (- maxwidth word-width) 2)
                                   (/ (1+ (- maxwidth word-width)) 2))))
                    (insert (make-string lwidth ? ))
                    (insert " ")
                    (insert word)
                    (insert (make-string rwidth ? ))
                    (forward-line 1))
                (let* ((convertedp (assq box tategaki-tobe-converted-letters))
                       (offsetp (assq box tategaki-offsets))
                       (word-width (char-width box))
                       (lwidth (/ (- maxwidth word-width) 2))
                       (rwidth (if (evenp (- maxwidth word-width))
                                   (/ (- maxwidth word-width) 2)
                                 (/ (1+ (- maxwidth word-width)) 2))))
                  (insert (make-string lwidth ? ))
                  (if offsetp
                      (cond ((= 1 (cdr offsetp))
                             (insert "  "))
                            ((= -1 (cdr offsetp))
                             ()))
                    (insert " "))
                  (if convertedp
                      (insert (cdr convertedp))
                    (insert (char-to-string box)))
                  (if offsetp
                      (cond ((= 1 (cdr offsetp))
                             (if (and (< (point) (point-max))
                                      (= ?�� (char-after (point))))
                                 (forward-char))
                             (if (and (< (point) (point-max))
                                      (not (eolp)))
                                 (delete-char 1)))
                            ((= -1 (cdr offsetp))
                             (insert " "))))
                                        ;       (if (= 1 (char-width box))
                                        ;           (progn (insert "�@")
                                        ;              (if (and (< (point) (point-max))
                                        ;                   (= ?�� (char-after (point))))
                                        ;                  (forward-char))
                                        ;              (if (< (point) (point-max))
                                        ;                  (delete-char 1))))
                  (insert (make-string rwidth ? ))
                  (forward-line 1))))
            (setq aline (cdr aline)))))
      (goto-char start)
      (setq strings (cdr strings)))))

(defun tategaki-region (start end)
  "�w�肵���͈͂��c�����ɑg�ł��܂��B
�ȉ��̓���������܂��B
1. �c�����ɂ����Ƃ��ɐ������Ȃ�悤�ɕ����̕ϊ����s���B
2. �֑��������s���B
3. �ӏ������̒i�������s���B
4. �������̂܂܂ɂ��镶������w��o����B"
  (interactive "r")
  (let* ((default (number-to-string tategaki-default-length))
         (number (string-to-number
                  (read-from-minibuffer "Line width: " default))))
    (if (< 0 number)
        (save-excursion
          (goto-char start)
          (let ((strings (tategaki-parse number start end)))
            (delete-region start end)
            (goto-char start)
            (tategaki-layout strings start number)
            (setq tategaki-default-length number))))))

;;}}}

;;{{{ additional functions for HTML output

(defun tategaki-layout-html (strings start number)
  (while strings
    (let ((aline (car strings)))
      (while aline
        (let ((box (car aline)))
          (if (listp box)
              (progn
                (insert "<td>")
                (insert (tategaki-char-list-to-string box))
                (insert "</td>")
                (forward-line 1))
            (let ((convertedp (assq box tategaki-tobe-converted-letters))
                  (offsetp (assq box tategaki-offsets)))
              (insert "<td>")
              (if offsetp
                  (cond ((= 1 (cdr offsetp))
                         (insert " "))
                        ((= -1 (cdr offsetp))
                         ())))
              (if convertedp
                  (insert (cdr convertedp))
                (insert (char-to-string box)))
              (if offsetp
                  (cond ((= 1 (cdr offsetp))
                         ())
                        ((= -1 (cdr offsetp))
                         ())))
              (insert "</td>")
              (forward-line 1))))
        (setq aline (cdr aline))))
    (goto-char start)
    (setq strings (cdr strings))))

(defun tategaki-region-html (number start end)
  "�w�肵���͈͂��c�����ɐ��`���AHTML �Ƃ��ďo�͂��܂��B
��������� `tategaki-region' �Ɠ����ł��B"
  (interactive "nLine width: \nr")
  (save-excursion
    (goto-char start)
    (let ((strings (tategaki-parse number start end))
          (n 0))
      (delete-region start end)
      (insert "<table>\n")
      (setq start (point))
      (while (< n (1+ number))
        (insert "</tr>\n")
        (setq n (1+ n)))
      (goto-char start)
      (tategaki-layout-html strings start number)
      (goto-char start)
      (let ((n 0))
        (while (< n (1+ number))
          (insert "<tr>")
          (setq n (1+ n))
          (forward-line 1)))
      (insert "</table>"))))

;;}}}

;;}}}

(provide 'tategaki)

;;; tategaki.el ends here

