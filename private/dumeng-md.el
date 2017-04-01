;;; package --- Summary:

;;; Commentary:

;;; Code:
(require 'mmm-mode)
(setq mmm-global-mode 'maybe)

;; (defun my-mmm-markdown-auto-class (type)
;;   "Define a mmm-mode class for LANG in `markdown-mode' using SUBMODE.
;; If SUBMODE is not provided, use `LANG-mode' by default."
;;   (let ((class (intern (concat "markdown-" lang)))
;;         (submode (or submode (intern (concat lang "-mode"))))
;;         (front (concat "^```" lang "[\n\r]+"))
;;         (back "^```"))
;;     (mmm-add-classes (list (list class :submode submode :front front :back back)))
;;     (mmm-add-mode-ext-class 'markdown-mode nil class)))

(defun dm-mmm-markdown-auto-class (lang mode)
  (let ((mode (or mode (intern (concat lang "-mode"))))
        (class (intern (concat "markdown-" lang)))
        (front (concat "^```" lang ))
        (back "^```"))
    (mmm-add-classes (list (list class :submode mode :front front :back back)))
    (mmm-add-mode-ext-class 'markdown-mode nil class)))
;; Mode names that derive directly from the language name
(defvar dm-md-mmm '(
                    ("c")
                    ("cpp")
                    ("html")
                    ("elisp" . emacs-lisp-mode)
                    ("python" )
                    ("shell" . shell-script-mode)
                    ("ruby")
                    ("clojure")
                    ("sql")
                    ("swift")
                    ("js" . rjsx-mode)))
(mapc (lambda (type)
        (funcall #'dm-mmm-markdown-auto-class (car type) (cdr type)))
      dm-md-mmm)

(provide 'dumeng-md)
;;; dumeng-md.el ends here
