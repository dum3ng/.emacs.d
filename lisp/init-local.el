;;; init-local.el --- customized init

;;; Commentary:

;;; Code:

(add-to-list 'load-path "~/.emacs.d/private")

;;smooth-scrolling
(require-package 'smooth-scrolling)
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)


;; (require 'dumeng-all-the-icons)
(require 'dumeng-customize-function)
(require 'dumeng-customize-mode)
(require 'dumeng-css)
(require 'dumeng-dired)
(require 'dumeng-flycheck)
(require 'dumeng-flymd)
(require 'dumeng-html)
(require 'dumeng-js)
(require 'dumeng-misc)
(require 'dumeng-neotree)
(require 'dumeng-org)
(require 'dumeng-paredit)
(require 'dumeng-powerline)
(require 'dumeng-yasnippet)
;; (require 'dumeng-test)

(provide 'init-local)
;;; init-local.el ends here
