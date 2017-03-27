(require-package 'org-bullets)
(require 'org-bullets)
(setq org-bullets-bullet-list '("❁" "❉" "❂" "✺" ))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


(require-package 'forecast)
(require 'forecast)
(setq calendar-latitude 31.2304
      calendar-longitude 121.4737
      calendar-location-name "Shanghai, China"
      forecast-api-key "b4c20f90fcf2ee6a4d314fc8326b78a4")

(defun fix-font ()
  "The forecast insert newline will lock the font following.
So we insert a break line .
Well, not really why this works."
  (let ((s ""))
    (put-text-property 0 (length s) 'face 'bold s)
    (insert s)))

(defun forecast-insert ()
  "insert simple forecast information in current buffer."
  (interactive)
  (if forecast--data   (progn (forecast--insert-location)
                              (newline)
                              (forecast--insert-summary)
                              (newline)
                              (forecast--insert-sun-moon-graphic)
                              (newline)
                              (fix-font))
    (progn (forecast--load-data)
           (forecast-insert))))

;;; org-publish settting

(setq org-publish-project-alist '(("notebook"
                                   :components ("notebook-src" "notebook-static"))
                                  ("notebook-src"
                                   :base-directory "~/notebook/"
                                   :publishing-directory "~/notebook_site"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html)
                                  ("notebook-static"
                                   :base-directory "~/notebook/"
                                   :base-extension "css\\|js\\|png\\|jpg\\jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
                                   :publishing-directory "~/notebook_site"
                                   :recursive t
                                   :publishing-function org-publish-attachment
                                   )))


;;; donot use yasnippet mode in org mode
(remove-hook 'org-mode-hook (lambda () (yas-minor-mode 0)))


;;; customize faces
(after-load 'org
  (set-face-attribute 'org-block  nil
                      ;; between begin and end
                      :background "#252525"
                      :foreground "#cb4b16" )
  (set-face-attribute 'org-block-background  nil
                      ;; src block
                      :background "#252525")
  (set-face-attribute 'org-block-begin-line nil
                      :background "#303030"
                      :weight 'semibold
                      :height 0.9
                      :underline '(:color "#808080"))
  (set-face-attribute 'org-block-end-line nil
                      :background "#303030"
                      :weight 'semibold
                      :height 0.9
                      :overline '(:color "#808080"))
  (set-face-attribute 'org-code nil
                      :foreground "#75D376")
  (set-face-attribute 'org-verbatim nil
                      :weight 'semibold
                      :foreground "#C89394")

;;; levels 1-5
  (set-face-attribute 'org-level-1 nil
                      :height 1.6
                      :weight 'bold)
  (set-face-attribute 'org-level-2 nil
                      :height 1.4
                      :weight 'semibold)
  (set-face-attribute 'org-level-3 nil
                      :height 1.2
                      :weight 'medium)
  (set-face-attribute 'org-level-4 nil
                      :height 1.0
                      :weight 'medium)
  (set-face-attribute 'org-level-5 nil
                      :height 1.0
                      :weight 'medium))

(after-load 'org
  (setq org-src-fontify-natively t)
  (setq org-src-tab-acts-natively t)
  (setq org-src-preserve-indentation t))



(provide 'dumeng-org)
