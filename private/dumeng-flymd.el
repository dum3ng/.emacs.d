;;; package --- Summary:

;;; Commentary:

;;; Code:
(require-package 'flymd)
(require 'flymd)


(defun my-flymd-browser-function (url)
  (let ((process-environment (browse-url-process-environment)))
    (apply 'start-process
           (concat "firefox " url)
           nil
           "/usr/bin/open"
           (list "-a" "firefox" url))))
(setq flymd-browser-open-function 'my-flymd-browser-function)


(provide 'dumeng-flymd)
;;; dumeng-flymd ends here
