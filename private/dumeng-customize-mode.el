;;; package --- Summary:
;;; Commentary:
;;; Code:

;; use jsx mode for js file
(defun add-to-list-m (to from)
  (dolist (ele from)
    (add-to-list to ele)))


(require-package 'rjsx-mode)
(require-package 'jinja2-mode)
(require-package 'swift-mode)

(add-to-list-m 'auto-mode-alist '(("\\.jsx?\\'" . rjsx-mode)
                                  ("\\.jinja\\'" . jinja2-mode)
                                  ("\\.babelrc" . js2-mode)
                                  ("\\.swift" . swift-mode)))


(add-to-list 'interpreter-mode-alist '("node" . rjsx-mode))


(provide 'dumeng-customize-mode)
;;; dumeng-customize-mode ends here
