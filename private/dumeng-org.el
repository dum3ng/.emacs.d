;;; package --- Summary:

;;; Commentary:

;;; Code:

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

(setq org-publish-project-alist '(("blog"
                                   :components ("blog-home" "blog-static"
                                                "blog-clojure"
                                                "blog-ios"
                                                "blog-javascript"
                                                "blog-linux"
                                                "blog-node"
                                                "blog-python"
                                                "blog-server"
                                                "blog-web"))
                                  ("blog-home"
                                   :base-directory "~/blog"
                                   :publishing-directory "~/blog_site"
                                   :recursive nil
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html)

                                  ("blog-clojure"
                                   :base-directory "~/blog/clojure"
                                   :publishing-directory "~/blog_site/clojure"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)
                                  ("blog-ios"
                                   :base-directory "~/blog/ios"
                                   :publishing-directory "~/blog_site/ios"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)
                                  ("blog-javascript"
                                   :base-directory "~/blog/javascript"
                                   :publishing-directory "~/blog_site/javascript"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)
                                  ("blog-linux"
                                   :base-directory "~/blog/linux"
                                   :publishing-directory "~/blog_site/linux"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)
                                  ("blog-server"
                                   :base-directory "~/blog/server"
                                   :publishing-directory "~/blog_site/server"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)
                                  ("blog-python"
                                   :base-directory "~/blog/python"
                                   :publishing-directory "~/blog_site/python"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)
                                  ("blog-web"
                                   :base-directory "~/blog/web"
                                   :publishing-directory "~/blog_site/web"
                                   :recursive t
                                   :base-extension "org"
                                   :auto-preamble t
                                   :publishing-function org-html-publish-to-html
                                   :makeindex t)

                                  ("blog-static"
                                   :base-directory "~/blog/"
                                   :base-extension "css\\|js\\|png\\|jpg\\jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
                                   :publishing-directory "~/blog_site"
                                   :recursive t
                                   :publishing-function org-publish-attachment
                                   )
                                  ))


;;(setq org-html-head)

;;; donot use yasnippet mode in org mode
(remove-hook 'org-mode-hook (lambda () (yas-minor-mode 0)))

(add-hook 'org-mode-hook (lambda () (visual-line-mode t)))

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


;;

(provide 'dumeng-org)
;;; dumeng-org.el ends here
