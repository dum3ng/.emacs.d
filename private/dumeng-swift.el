;;; package --- Summary:

;;; Commentary:

;;; Code:

(require-package 'swift-mode)
(require 'swift-mode)


(require-package 'web-mode)
(require 'web-mode)

(add-hook 'web-mode-hook (lambda () (emmet-mode 1)))
(add-to-list 'auto-mode-alist '("\\.stencil" . web-mode))



(provide 'dumeng-swift)
;;; dumeng-swift.el ends here
