;;; package --- Summary:

;;; Commentary:

;;; Code:
(require-package 'all-the-icons)
(require-package 'all-the-icons-dired)

(if (fboundp 'tramp-tramp-file-p)
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(provide 'dumeng-dired)
;;; dumeng-dired ends here
