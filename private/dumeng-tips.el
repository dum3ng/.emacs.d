;;; package --- Summary:

;;; Commentary:

;;; Code:

(require 'ag)

(defvar dm-tips-path "~/memos/tips")

(defun dm/tips-search
    (str)
  (interactive "sSearch tips : " )
  (ag str dm-tips-path))



(provide 'dumeng-tips)
;;; dumeng-tips.el ends here
