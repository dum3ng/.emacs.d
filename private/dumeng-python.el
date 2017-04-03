;;; package --- Summary:

;;; Commentary:

;;; Code:

;; remove anaconda mode
(remove-hook 'python-mode-hook 'anaconda-eldoc-mode)
(remove-hook 'python-mode-hook 'anaconda-mode)
(remove-hook 'python-mode-hook                 (lambda () (sanityinc/local-push-company-backend 'company-anaconda)))


;; use elpy instead
(require-package 'elpy)
(require 'elpy)
(elpy-enable)

(provide 'dumeng-python)
;;; dumeng-python.el ends here
