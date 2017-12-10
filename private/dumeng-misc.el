;;; package --- Summary:

;;; Commentary:

;;; Code:

;;; remove the auto saved files to temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(add-to-list 'package-archives
             `("melpa-stable" . ,(if sanityinc/no-ssl
                                     "http://stable.melpa.org/packages/"
                                   "https://stable.melpa.org/packages/")))

;;; some helper functions
(defun load-current-file ()
  "load current file"
  (interactive)
  (if (buffer-file-name)
      (load-file (buffer-file-name))
    (message "no buffer to load")))


;;; for mac user
(if *is-a-mac*
    (setq mac-option-modifier 'super))


;;; for default frame
(setq default-frame-alist '((width . 140)
                            (height . 80)
                            (vertical-scroll-bars . nil)
                            (internal-border-width . 0)
                            (font . "Source Code Pro-14")))



;;; theme
(require-package 'zenburn-theme)
(set-face-attribute 'region nil :background "#4F71A0"  )
(set-face-attribute 'highlight nil :background "#566A82"  )
;;(load-theme 'zenburn)



;;; add emoji support
(require-package 'emojify)
;;;(require 'emojify)
;;(global-emojify-mode 1)


;;; add writeroom
(require-package 'writeroom-mode)
(require 'writeroom-mode)
(add-hook 'writeroom-mode-hook (lambda () (visual-line-mode 1)))



(provide 'dumeng-misc)
;;; dumeng-misc ends here
