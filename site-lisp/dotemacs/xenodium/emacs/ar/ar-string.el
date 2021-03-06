;;; ar-string.el --- String support.

;;; Commentary:
;; String helpers.


;;; Code:

(defun ar/string-spc-join (&rest strings)
  "Join strings in STRINGS list with spaces."
  (mapconcat 'identity strings " "))

(defun ar/string-join (separator &rest strings)
  "Join strings with SEPARATOR in STRINGS list."
  (mapconcat 'identity strings separator))

(defun ar/string-match-p (regex string)
  "Return t if REGEX is a match in STRING.  nil otherwise."
  (if (string-match regex string) t nil))

(defun ar/string-first-match (regex string)
  "Return first match if REGEX is a match in STRING.  nil otherwise."
  (when (ar/string-match-p regex string)
    (substring string
               (match-beginning 0)
               (match-end 0))))

(defun ar/string-match (string regexp &optional num)
  "Like `string-match' but returns first STRING matching REGEXP and group NUM."
  (string-match regexp string)
  (match-string-no-properties (or num 0) string))

(defun ar/string-numeric-p (string)
  "Return t if STRING is an unsigned integer.  nil otherwise."
  (ar/string-match-p "\\`[[:digit:]]+\\'" string))

(defun ar/string-alpha-numeric-p (string)
  "Return t if STRING is alphanumeric.  nil otherwise."
  (ar/string-match-p "\\`[[:alnum:]]+\\'" string))

(defun ar/string-replace-regex-pairs (haystack &rest pairs)
  "Replace in HAYSTACK all PAIRS. For example: (ar/string-replace \"one two\" '(\"one\" . \"three\") '(\"two\" . \"four\"))"
  (mapc (lambda (pair)
          (assert (consp pair) nil "Each pair must be a cons cell")
          (setq haystack (replace-regexp-in-string (car pair)
                                                   (cdr pair)
                                                   haystack)))
        pairs)
  haystack)

;; (defun ar/string-decode-html-entities (html)
;;   "Decode HTML entities."
;;   (with-temp-buffer
;;     (save-excursion (insert html))
;;     (xml-parse-string)))

(defun ar/string-decode-html-entities (html)
  (assert html nil "Must have HTML")
  (let ((result html)
        (entities [
                   ["&nbsp;" " "] ["&ensp;" "???"] ["&emsp;" "???"] ["&thinsp;" "???"]
                   ["&rlm;" "???"] ["&lrm;" "???"] ["&zwj;" "???"] ["&zwnj;" "???"]
                   ["&iexcl;" "??"] ["&cent;" "??"] ["&pound;" "??"] ["&curren;" "??"]
                   ["&yen;" "??"] ["&brvbar;" "??"] ["&sect;" "??"] ["&uml;" "??"]
                   ["&copy;" "??"] ["&ordf;" "??"] ["&laquo;" "??"] ["&not;" "??"]
                   ["&shy;" "??"] ["&reg;" "??"] ["&macr;" "??"] ["&deg;" "??"]
                   ["&plusmn;" "??"] ["&sup2;" "??"] ["&sup3;" "??"] ["&acute;" "??"]
                   ["&micro;" "??"] ["&para;" "??"] ["&middot;" "??"] ["&cedil;" "??"]
                   ["&sup1;" "??"] ["&ordm;" "??"] ["&raquo;" "??"] ["&frac14;" "??"]
                   ["&frac12;" "??"] ["&frac34;" "??"] ["&iquest;" "??"]["&Agrave;" "??"]
                   ["&Aacute;" "??"] ["&Acirc;" "??"] ["&Atilde;" "??"] ["&Auml;" "??"]
                   ["&Aring;" "??"] ["&AElig;" "??"] ["&Ccedil;" "??"] ["&Egrave;" "??"]
                   ["&Eacute;" "??"] ["&Ecirc;" "??"] ["&Euml;" "??"] ["&Igrave;" "??"]
                   ["&Iacute;" "??"] ["&Icirc;" "??"] ["&Iuml;" "??"] ["&ETH;" "??"]
                   ["&Ntilde;" "??"] ["&Ograve;" "??"] ["&Oacute;" "??"] ["&Ocirc;" "??"]
                   ["&Otilde;" "??"] ["&Ouml;" "??"] ["&times;" "??"] ["&Oslash;" "??"]
                   ["&Ugrave;" "??"] ["&Uacute;" "??"] ["&Ucirc;" "??"] ["&Uuml;" "??"]
                   ["&Yacute;" "??"] ["&THORN;" "??"] ["&szlig;" "??"] ["&agrave;" "??"]
                   ["&aacute;" "??"] ["&acirc;" "??"] ["&atilde;" "??"] ["&auml;" "??"]
                   ["&aring;" "??"] ["&aelig;" "??"] ["&ccedil;" "??"] ["&egrave;" "??"]
                   ["&eacute;" "??"] ["&ecirc;" "??"] ["&euml;" "??"] ["&igrave;" "??"]
                   ["&iacute;" "??"] ["&icirc;" "??"] ["&iuml;" "??"] ["&eth;" "??"]
                   ["&ntilde;" "??"] ["&ograve;" "??"] ["&oacute;" "??"] ["&ocirc;" "??"]
                   ["&otilde;" "??"] ["&ouml;" "??"]["&divide;" "??"] ["&oslash;" "??"]
                   ["&ugrave;" "??"] ["&uacute;" "??"] ["&ucirc;" "??"] ["&uuml;" "??"]
                   ["&yacute;" "??"] ["&thorn;" "??"] ["&yuml;" "??"] ["&fnof;" "??"]
                   ["&Alpha;" "??"] ["&Beta;" "??"] ["&Gamma;" "??"] ["&Delta;" "??"]
                   ["&Epsilon;" "??"] ["&Zeta;" "??"] ["&Eta;" "??"] ["&Theta;" "??"]
                   ["&Iota;" "??"] ["&Kappa;" "??"] ["&Lambda;" "??"] ["&Mu;" "??"]
                   ["&Nu;" "??"] ["&Xi;" "??"] ["&Omicron;" "??"] ["&Pi;" "??"]
                   ["&Rho;" "??"] ["&Sigma;" "??"] ["&Tau;" "??"] ["&Upsilon;" "??"]
                   ["&Phi;" "??"] ["&Chi;" "??"] ["&Psi;" "??"] ["&Omega;" "??"]
                   ["&alpha;" "??"] ["&beta;" "??"] ["&gamma;" "??"] ["&delta;" "??"]
                   ["&epsilon;" "??"] ["&zeta;" "??"] ["&eta;" "??"] ["&theta;" "??"]
                   ["&iota;" "??"] ["&kappa;" "??"] ["&lambda;" "??"] ["&mu;" "??"]
                   ["&nu;" "??"] ["&xi;" "??"] ["&omicron;" "??"] ["&pi;" "??"]
                   ["&rho;" "??"] ["&sigmaf;" "??"] ["&sigma;" "??"] ["&tau;" "??"]
                   ["&upsilon;" "??"] ["&phi;" "??"] ["&chi;" "??"] ["&psi;" "??"]
                   ["&omega;" "??"] ["&thetasym;" "??"] ["&upsih;" "??"] ["&piv;" "??"]
                   ["&bull;" "???"] ["&hellip;" "???"] ["&prime;" "???"] ["&Prime;" "???"]
                   ["&oline;" "???"] ["&frasl;" "???"] ["&weierp;" "???"] ["&image;" "???"]
                   ["&real;" "???"] ["&trade;" "???"] ["&alefsym;" "???"] ["&larr;" "???"]
                   ["&uarr;" "???"] ["&rarr;" "???"] ["&darr;" "???"] ["&harr;" "???"]
                   ["&crarr;" "???"] ["&lArr;" "???"] ["&uArr;" "???"] ["&rArr;" "???"]
                   ["&dArr;" "???"] ["&hArr;" "???"] ["&forall;" "???"] ["&part;" "???"]
                   ["&exist;" "???"] ["&empty;" "???"] ["&nabla;" "???"] ["&isin;" "???"]
                   ["&notin;" "???"] ["&ni;" "???"] ["&prod;" "???"] ["&sum;" "???"]
                   ["&minus;" "???"] ["&lowast;" "???"] ["&radic;" "???"] ["&prop;" "???"]
                   ["&infin;" "???"] ["&ang;" "???"] ["&and;" "???"] ["&or;" "???"]
                   ["&cap;" "???"] ["&cup;" "???"] ["&int;" "???"] ["&there4;" "???"]
                   ["&sim;" "???"] ["&cong;" "???"] ["&asymp;" "???"] ["&ne;" "???"]
                   ["&equiv;" "???"] ["&le;" "???"] ["&ge;" "???"] ["&sub;" "???"]
                   ["&sup;" "???"] ["&nsub;" "???"] ["&sube;" "???"] ["&supe;" "???"]
                   ["&oplus;" "???"] ["&otimes;" "???"] ["&perp;" "???"] ["&sdot;" "???"]
                   ["&lceil;" "???"] ["&rceil;" "???"] ["&lfloor;" "???"] ["&rfloor;" "???"]
                   ["&lang;" "???"] ["&rang;" "???"] ["&loz;" "???"] ["&spades;" "???"]
                   ["&clubs;" "???"] ["&hearts;" "???"] ["&diams;" "???"] ["&quot;" "\""]
                   ["&OElig;" "??"] ["&oelig;" "??"] ["&Scaron;" "??"] ["&scaron;" "??"]
                   ["&Yuml;" "??"] ["&circ;" "??"] ["&tilde;" "??"] ["&ndash;" "???"]
                   ["&mdash;" "???"] ["&lsquo;" "???"] ["&rsquo;" "???"] ["&sbquo;" "???"]
                   ["&ldquo;" "???"] ["&rdquo;" "???"] ["&bdquo;" "???"] ["&dagger;" "???"]
                   ["&Dagger;" "???"] ["&permil;" "???"] ["&lsaquo;" "???"] ["&rsaquo;" "???"]
                   ["&euro;" "???"] ["&amp;" "&"] ["&#39;" "'"] ["&#8211;" "???"] ["&#x27;" "'"]
                   ]))
    (mapc (lambda (entity)
            (setq result (s-replace (elt entity 0)
                                  (elt entity 1)
                                  result)))
          entities)
    result))

(provide 'ar-string)

;;; ar-string.el ends here
