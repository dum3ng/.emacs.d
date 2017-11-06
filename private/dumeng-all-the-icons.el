;;; package --- Summary:

;;; Commentary:

;;; Code:

(require 'all-the-icons)





;; (add-to-list 'all-the-icons-icon-alist '("\\.cfg"          all-the-icons-octicon "settings"                     :height 1.0 :v-adjust 0.0 :face all-the-icons-lred))

;; (add-to-list 'all-the-icons-dir-icon-alist '("android"          all-the-icons-material "android"                     :height 1.0 :v-adjust 0.0 :face all-the-icons-green ))
;; (add-to-list 'all-the-icons-dir-icon-alist '("apple"          all-the-icons-fileicon "apple"                     :height 1.0 :v-adjust 0.0 ))
;; (add-to-list 'all-the-icons-dir-icon-alist '("ios"          all-the-icons-fileicon "apple"                     :height 1.0 :v-adjust 0.0 ))

;; add my customized icon to fontawesome
;; (add-to-list 'all-the-icons-data/fa-icon-alist
;;              '("json" . "\xeff0"))



(add-to-list-m 'all-the-icons-icon-alist
               '(("\\.ts"          all-the-icons-fileicon "typescript"                     :height 0.8 :v-adjust -0.2 :face all-the-icons-blue)
                 ("\\.lock"
                  all-the-icons-material "lock"
                  :height 0.8 :v-adjust -0.2 :face all-the-icons-yellow)
                 ("\\.db"
                  all-the-icons-octicon "database"
                  :height 1.0 :v-adjust 0.0 :face all-the-icons-lsilver)
                 ("\\.sqlite3"
                  all-the-icons-fileicon "sqlite"
                  :height 1.0 :v-adjust 0.0 :face all-the-icons-lblue)
                 ("\\.cljs"
                  all-the-icons-fileicon "cljs"
                  :face all-the-icons-lblue)
                 ("\\.json"
                  all-the-icons-octicon "code"
                  :face all-the-icons-yellow)
                 ("\\.meta"
                  all-the-icons-faicon "bars"
                  :face all-the-icons-lsilver)
                 ("\\.fire"
                  all-the-icons-faicon "fire"
                  :face all-the-icons-lred)
                 ("^\\.?Capstanfile"
                  all-the-icons-faicon "cloud"
                  :face all-the-icons-lsilver)
                 ("\\.edn"
                  all-the-icons-alltheicon "clojure-line"
                  :face all-the-icons-lblue)
                 )
               )
(setcdr (last all-the-icons-icon-alist 2) '( ("."                all-the-icons-faicon "cog"                   :height 0.8 :v-adjust 0.0 :face all-the-icons-dsilver)))

(provide 'dumeng-all-the-icons)
;;; dumeng-all-the-icons ends here
