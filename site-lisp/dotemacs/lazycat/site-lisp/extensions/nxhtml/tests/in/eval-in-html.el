;; This file contains an example of the functions that are defined by
;; `mumamo-fetch-major-mode-setup'. The file was written using utf-8.

;; The functions are given names like mumamo-eval-in-MODE. The code
;; that was evaled to define the function is saved in the property
;; `mumamo-defun' on the function symbol. This code was used to insert
;; the function code below:
(insert (pp-to-string (get 'mumamo-eval-in-html-mode 'mumamo-defun)))

;; I have inserted comments by hand below:
(defun mumamo-eval-in-html-mode (body)
  ;; The parameter BODY is evaled at the end of the let form
  ;; below. The let bound variables are from two sources:
  ;;
  ;; 1) Buffer local variables (minus some that do not fit/disturbs,
  ;;    see `mumamo-get-relevant-buffer-local-vars'.
  ;;
  ;; 2) From the list in `mumamo-fetch-major-mode-setup'. This list
  ;;    contains variables that are often set buffer locally for
  ;;    fontification indentation etc. Unfortunately not all of these
  ;;    are automatic buffer locals.
  (let
      ;; These variables are from the list in
      ;; `mumamo-fetch-major-mode-setup':
      ((sgml-xml-mode nil)
       (indent-line-function 'sgml-indent-line)
       (indent-region-function nil)
       (normal-auto-fill-function 'do-auto-fill)
       (comment-start "<!-- ")
       (comment-end " -->")
       (comment-start-skip "<!--[ 	]*")
       (comment-end-skip "[ 	]*--[ 	\n]*>")
       (comment-multi-line nil)
       (comment-line-break-function 'sgml-comment-indent-new-line)
       (paragraph-start "[ 	]*$\\|[ 	]*</?\\([_:[:alpha:]][-_.:[:alnum:]]*\\(?:[^\"'/><]\\|\"[^\"]*\"\\|'[^']*'\\)*\\)?>")
       (paragraph-separate "[ 	]*$\\|[ 	]*</?\\([_:[:alpha:]][-_.:[:alnum:]]*\\(?:[^\"'/><]\\|\"[^\"]*\"\\|'[^']*'\\)*\\)?>$")
       (paragraph-ignore-fill-prefix nil)
       (adaptive-fill-mode t)
       (adaptive-fill-regexp "[ 	]*")
       (font-lock-multiline nil)
       (font-lock-extend-after-change-region-function nil)
       (font-lock-extend-region-functions
        '(font-lock-extend-region-wholelines font-lock-extend-region-multiline))
       (font-lock-comment-start-skip nil)
       (font-lock-comment-end-skip nil)
       (font-lock-set-defaults)
       (font-lock-defaults
        '((sgml-font-lock-keywords sgml-font-lock-keywords-1 sgml-font-lock-keywords-2)
          nil t nil nil
          (font-lock-syntactic-keywords . sgml-font-lock-syntactic-keywords)))
       (font-lock-beginning-of-syntax-function nil)
       (font-lock-syntactic-face-function
        '#[(state)
           "\3038\203 	\207\n\207"
           [state font-lock-string-face font-lock-comment-face 3]
           2])
       (font-lock-mark-block-function nil)
       (font-lock-extra-managed-props nil)
       (font-lock-fontify-buffer-function 'jit-lock-refontify)
       (font-lock-unfontify-buffer-function 'font-lock-default-unfontify-buffer)
       (font-lock-fontify-region-function 'font-lock-default-fontify-region)
       (font-lock-unfontify-region-function 'font-lock-default-unfontify-region)
       (jit-lock-after-change-extend-region-functions
        '(font-lock-extend-jit-lock-region-after-change t))
       (syntax-begin-function nil)
       (fill-paragraph-function nil)
       (comment-use-global-state nil)
       (multibyte-syntax-as-symbol 'multibyte-syntax-as-symbol)
       (parse-sexp-ignore-comments 'parse-sexp-ignore-comments)
       (parse-sexp-lookup-properties 'parse-sexp-lookup-properties)

       ;; These variables are fetched with
       ;; `mumamo-get-relevant-buffer-local-vars':
       (text-mode-variant t)
       (skeleton-transformation-function 'identity)
       (skeleton-further-elements
        '((completion-ignore-case t)))
       (skeleton-end-hook
        '#[nil "l\206 \301=\206 \242\301=?\206 \302 \207"
               [v2 n newline-and-indent]
               2])
       (sgml-xml-mode nil)
       (sgml-unclosed-tags
        '("body" "colgroup" "dd" "dt" "head" "html" "li" "option" "p" "tbody" "td" "tfoot" "th" "thead" "tr"))
       (sgml-tag-help
        '(("!" . "Empty declaration for comment")
          ("![" . "Embed declarations with parser directive")
          ("!attlist" . "Tag attributes declaration")
          ("!doctype" . "Document type (DTD) declaration")
          ("!element" . "Tag declaration")
          ("!entity" . "Entity (macro) declaration")
          ("a" . "Anchor of point or link elsewhere")
          ("abbrev" . "?")
          ("acronym" . "?")
          ("address" . "Formatted mail address")
          ("array" . "Math array")
          ("au" . "?")
          ("b" . "Bold face")
          ("base" . "Base address for URLs")
          ("big" . "Font size")
          ("blink" . "Blinking text")
          ("blockquote" . "Indented quotation")
          ("body" . "Document body")
          ("box" . "Math fraction")
          ("br" . "Line break")
          ("caption" . "Table caption")
          ("center" . "Centered text")
          ("changed" . "Change bars")
          ("cite" . "Citation of a document")
          ("code" . "Formatted source code")
          ("dd" . "Definition of term")
          ("del" . "?")
          ("dfn" . "?")
          ("dir" . "Directory list (obsolete)")
          ("dl" . "Definition list")
          ("dt" . "Term to be definined")
          ("em" . "Emphasized")
          ("embed" . "Embedded data in foreign format")
          ("fig" . "Figure")
          ("figa" . "Figure anchor")
          ("figd" . "Figure description")
          ("figt" . "Figure text")
          ("font" . "Font size")
          ("form" . "Form with input fields")
          ("group" . "Document grouping")
          ("h1" . "Most important section headline")
          ("h2" . "Important section headline")
          ("h3" . "Section headline")
          ("h4" . "Minor section headline")
          ("h5" . "Unimportant section headline")
          ("h6" . "Least important section headline")
          ("head" . "Document header")
          ("hr" . "Horizontal rule")
          ("html" . "HTML Document")
          ("i" . "Italic face")
          ("img" . "Graphic image")
          ("input" . "Form input field")
          ("ins" . "?")
          ("isindex" . "Input field for index search")
          ("kbd" . "Keybard example face")
          ("lang" . "Natural language")
          ("li" . "List item")
          ("link" . "Link relationship")
          ("math" . "Math formula")
          ("menu" . "Menu list (obsolete)")
          ("mh" . "Form mail header")
          ("nextid" . "Allocate new id")
          ("nobr" . "Text without line break")
          ("ol" . "Ordered list")
          ("option" . "Selection list item")
          ("over" . "Math fraction rule")
          ("p" . "Paragraph start")
          ("panel" . "Floating panel")
          ("person" . "?")
          ("pre" . "Preformatted fixed width text")
          ("q" . "?")
          ("rev" . "Reverse video")
          ("s" . "?")
          ("samp" . "Sample text")
          ("select" . "Selection list")
          ("small" . "Font size")
          ("sp" . "Nobreak space")
          ("strong" . "Standout text")
          ("sub" . "Subscript")
          ("sup" . "Superscript")
          ("table" . "Table with rows and columns")
          ("tb" . "Table vertical break")
          ("td" . "Table data cell")
          ("textarea" . "Form multiline edit area")
          ("th" . "Table header cell")
          ("title" . "Document title")
          ("tr" . "Table row separator")
          ("tt" . "Typewriter face")
          ("u" . "Underlined text")
          ("ul" . "Unordered list")
          ("var" . "Math variable face")
          ("wbr" . "Enable <br> within <nobr>")))
       (sgml-tag-face-alist
        '(("b" . bold)
          ("big" . bold)
          ("blink" . highlight)
          ("cite" . italic)
          ("em" . italic)
          ("h1" bold underline)
          ("h2" bold-italic underline)
          ("h3" italic underline)
          ("h4" . underline)
          ("h5" . underline)
          ("h6" . underline)
          ("i" . italic)
          ("rev" . modeline)
          ("s" . underline)
          ("small" . default)
          ("strong" . bold)
          ("title" bold underline)
          ("tt" . default)
          ("u" . underline)
          ("var" . italic)))
       (sgml-tag-alist
        '(("a"
           ("name")
           ("href"
            ("ftp:")
            ("file:")
            ("finger:")
            ("gopher:")
            ("http:")
            ("mailto:")
            ("news:")
            ("rlogin:")
            ("telnet:")
            ("tn3270:")
            ("wais:")
            ("/cgi-bin/"))
           ("rel"
            ("next")
            ("previous")
            ("parent")
            ("subdocument")
            ("made"))
           ("rev"
            ("next")
            ("previous")
            ("parent")
            ("subdocument")
            ("made"))
           ("title"))
          ("base" t "href"
           ("ftp:")
           ("file:")
           ("finger:")
           ("gopher:")
           ("http:")
           ("mailto:")
           ("news:")
           ("rlogin:")
           ("telnet:")
           ("tn3270:")
           ("wais:")
           ("/cgi-bin/"))
          ("dir"
           (nil n
                ("List item: " "<li>" str
                 (if sgml-xml-mode "</li>")
                 n)))
          ("font" nil "size"
           ("-1")
           ("+1")
           ("-2")
           ("+2")
           ("1")
           ("2")
           ("3")
           ("4")
           ("5")
           ("6")
           ("7"))
          ("form"
           (n _ n "<input type=\"submit\" value=\"\""
              (if sgml-xml-mode " />" ">"))
           ("action"
            ("ftp:")
            ("file:")
            ("finger:")
            ("gopher:")
            ("http:")
            ("mailto:")
            ("news:")
            ("rlogin:")
            ("telnet:")
            ("tn3270:")
            ("wais:")
            ("/cgi-bin/"))
           ("method"
            ("get")
            ("post")))
          ("h1"
           ("align"
            ("left")
            ("center")
            ("right")))
          ("h2"
           ("align"
            ("left")
            ("center")
            ("right")))
          ("h3"
           ("align"
            ("left")
            ("center")
            ("right")))
          ("h4"
           ("align"
            ("left")
            ("center")
            ("right")))
          ("h5"
           ("align"
            ("left")
            ("center")
            ("right")))
          ("h6"
           ("align"
            ("left")
            ("center")
            ("right")))
          ("hr" t
           ("size"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("width")
           ("noshade" t)
           ("align"
            ("left")
            ("center")
            ("right")))
          ("img" t
           ("align"
            ("top")
            ("middle")
            ("bottom")
            ("baseline")
            ("texttop")
            ("absmiddle")
            ("absbottom"))
           ("src")
           ("alt")
           ("width" "1")
           ("height" "1")
           ("border" "1")
           ("vspace" "1")
           ("hspace" "1")
           ("ismap" t))
          ("input" t
           ("size"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("maxlength"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("checked" t)
           ("name")
           ("type"
            ("text")
            ("password")
            ("checkbox")
            ("radio")
            ("submit")
            ("reset"))
           ("value"))
          ("link" t
           ("href"
            ("ftp:")
            ("file:")
            ("finger:")
            ("gopher:")
            ("http:")
            ("mailto:")
            ("news:")
            ("rlogin:")
            ("telnet:")
            ("tn3270:")
            ("wais:")
            ("/cgi-bin/"))
           ("rel"
            ("next")
            ("previous")
            ("parent")
            ("subdocument")
            ("made"))
           ("rev"
            ("next")
            ("previous")
            ("parent")
            ("subdocument")
            ("made"))
           ("title"))
          ("menu"
           (nil n
                ("List item: " "<li>" str
                 (if sgml-xml-mode "</li>")
                 n)))
          ("ol"
           (nil n
                ("List item: " "<li>" str
                 (if sgml-xml-mode "</li>")
                 n))
           ("type"
            ("A")
            ("a")
            ("I")
            ("i")
            ("1")))
          ("p" t
           ("align"
            ("left")
            ("center")
            ("right")))
          ("select"
           (nil n
                ("Text: " "<option>" str
                 (if sgml-xml-mode "</option>")
                 n))
           ("name")
           ("size"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("multiple" t))
          ("table"
           (nil n
                ((completing-read "Cell kind: "
                                  '(("td")
                                    ("th"))
                                  nil t "t")
                 "<tr><" str 62 _
                 (if sgml-xml-mode
                     (concat "<" str "></tr>"))
                 n))
           ("border" t
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("width" "10")
           ("cellpadding"))
          ("td" t
           ("align"
            ("left")
            ("center")
            ("right"))
           ("valign"
            ("top")
            ("middle")
            ("bottom")
            ("baseline"))
           ("colspan"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("rowspan"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("nowrap" t))
          ("textarea"
           ("name")
           ("rows"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("cols"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9")))
          ("th" t
           ("align"
            ("left")
            ("center")
            ("right"))
           ("valign"
            ("top")
            ("middle")
            ("bottom")
            ("baseline"))
           ("colspan"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("rowspan"
            ("1")
            ("2")
            ("3")
            ("4")
            ("5")
            ("6")
            ("7")
            ("8")
            ("9"))
           ("nowrap" t))
          ("ul"
           (nil n
                ("List item: " "<li>" str
                 (if sgml-xml-mode "</li>")
                 n))
           ("type"
            ("disc")
            ("circle")
            ("square")))
          ("!["
           ("ignore" t)
           ("include" t))
          ("!attlist")
          ("!doctype")
          ("!element")
          ("!entity")
          ("abbrev")
          ("acronym")
          ("address")
          ("array"
           (nil n
                ("Item: " "<item>" str
                 (if sgml-xml-mode "</item>")
                 n))
           "align")
          ("au")
          ("b")
          ("big")
          ("blink")
          ("blockquote" n)
          ("body" n
           ("background" ".gif")
           ("bgcolor" "#")
           ("text" "#")
           ("link" "#")
           ("alink" "#")
           ("vlink" "#"))
          ("box"
           (nil _ "<over>" _
                (if sgml-xml-mode "</over>")))
          ("br" t
           ("clear"
            ("left")
            ("right")))
          ("caption"
           ("valign"
            ("top")
            ("bottom")))
          ("center" n)
          ("cite")
          ("code" n)
          ("dd" t)
          ("del")
          ("dfn")
          ("div")
          ("dl"
           (nil n
                ("Term: " "<dt>" str
                 (if sgml-xml-mode "</dt>")
                 "<dd>" _
                 (if sgml-xml-mode "</dd>")
                 n)))
          ("dt"
           (t _
              (if sgml-xml-mode "</dt>")
              "<dd>"
              (if sgml-xml-mode "</dd>")
              n))
          ("em")
          ("head" n)
          ("html"
           (n "<head>\n" "<title>"
              (setq str
                    (read-input "Title: "))
              "</title>\n" "</head>\n" "<body>\n<h1>" str "</h1>\n" _ "\n<address>\n<a href=\"mailto:" user-mail-address "\">"
              (user-full-name)
              "</a>\n</address>\n" "</body>"))
          ("i")
          ("ins")
          ("isindex" t
           ("action")
           ("prompt"))
          ("kbd")
          ("lang")
          ("li" t)
          ("math" n)
          ("nobr")
          ("option" t
           ("value")
           ("label")
           ("selected" t))
          ("over" t)
          ("person")
          ("pre" n)
          ("q")
          ("rev")
          ("s")
          ("samp")
          ("small")
          ("span" nil
           ("class"
            ("builtin")
            ("comment")
            ("constant")
            ("function-name")
            ("keyword")
            ("string")
            ("type")
            ("variable-name")
            ("warning")))
          ("strong")
          ("sub")
          ("sup")
          ("title")
          ("tr" t)
          ("tt")
          ("u")
          ("var")
          ("wbr" t)))
       (sgml-saved-validate-command nil)
       (sgml-face-tag-alist
        '((bold . "b")
          (italic . "i")
          (underline . "u")
          (modeline . "rev")))
       (sgml-empty-tags
        '("area" "base" "basefont" "br" "col" "frame" "hr" "img" "input" "isindex" "link" "meta" "param" "wbr"))
       (sgml-display-text
        '((img . "[/]")
          (hr . "----------")
          (li . "o ")))
       (sentence-end-base "[.?!][]\"'??????)}]*\\(<[^>]*>\\)*")
       (require-final-newline t)
       (paragraph-start "[ 	]*$\\|[ 	]*</?\\([_:[:alpha:]][-_.:[:alnum:]]*\\(?:[^\"'/><]\\|\"[^\"]*\"\\|'[^']*'\\)*\\)?>")
       (paragraph-separate "[ 	]*$\\|[ 	]*</?\\([_:[:alpha:]][-_.:[:alnum:]]*\\(?:[^\"'/><]\\|\"[^\"]*\"\\|'[^']*'\\)*\\)?>$")
       (outline-regexp "^.*<[Hh][1-6]\\>")
       (outline-level
        '#[nil "\300\225Sf\207"
               [0]
               1])
       (outline-heading-end-regexp "</[Hh][1-6]>")
       (nxhtml-minor-mode-major-mode 'html-mode)
       (nxhtml-minor-mode t)
       (major-mode 'html-mode)
       (jit-lock-after-change-extend-region-functions
        '(font-lock-extend-jit-lock-region-after-change t))
       (indent-line-function 'sgml-indent-line)
       (imenu-create-index-function 'html-imenu-index)
       (font-lock-syntactic-keywords 'sgml-font-lock-syntactic-keywords)
       (font-lock-multiline nil)
       (fill-nobreak-predicate
        '(sgml-fill-nobreak t))
       (facemenu-end-add-face nil)
       (facemenu-add-face-function 'sgml-mode-facemenu-add-face-function)
       (comment-start-skip "<!--[ 	]*")
       (comment-start "<!-- ")
       (comment-line-break-function 'sgml-comment-indent-new-line)
       (comment-indent-function 'sgml-comment-indent)
       (comment-end-skip "[ 	]*--[ 	\n]*>")
       (comment-end " -->")
       (char-property-alias-alist
        '((face font-lock-face)))
       (auto-composition-mode-major-mode 'html-mode)
       (auto-composition-mode t)
       (auto-composition-function 'auto-compose-chars)
       (adaptive-fill-regexp "[ 	]*"))
    ;; The syntax table is handled differently since it is not just a
    ;; variable. Instead of copying it the name of the syntax table is
    ;; used together with `with-syntax-table' to change it
    ;; temporarily.
    (with-syntax-table
        (if html-mode-syntax-table html-mode-syntax-table
          (standard-syntax-table))
      (let ((t1 (get-internal-run-time))
            t2)
        ;; And here I am setting font lock variables again. Why did I
        ;; do that? I have to test, it is probably a left over from
        ;; earlier versions.
        (setq font-lock-set-defaults nil)
        (font-lock-set-defaults)
        ;; Just some timing test stuff:
        (setq t2 (get-internal-run-time))
        (mumamo-msgfntfy "font-lock-set-defaults runtime=%s, %s" t1 t2)
        t2)
      ;; And finally - here is what I wanted to do:
      (eval body))))

;; Local Variables:
;; coding: utf-8
;; End:
