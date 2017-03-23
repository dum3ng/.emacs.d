;;; package --- Summary:

;;; Commentary:

;;; Code:

(after-load 'scss
  (setq css-indent-offset 2))

(require-package 'web-mode)
(add-auto-mode 'web-mode "\\.scss")
(add-hook 'web-mode-hook (lambda () (progn (rainbow-delimiters-mode-enable)
                                      (aggressive-indent-mode 1))))

(provide 'dumeng-css)
;;; dumeng-css ends here
