;;; package --- Summary:

;;; Commentary:

;;; Code:

;;; remove the auto saved files to temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;;; for mac user
(setq mac-option-modifier 'super)


;;; for default frame
(setq default-frame-alist '((width . 140)
                            (height . 80)
                            (vertical-scroll-bars . nil)
                            (internal-border-width . 0)
                            (font . "Source Code Pro-14")))



;;; theme
(require-package 'zenburn-theme)
;;(load-theme 'zenburn)

(provide 'dumeng-misc)
;;; dumeng-misc ends here
