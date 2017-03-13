;;; package --- Summary:

;;; Commentary:

;;; Code:

;; neotree
(require-package 'neotree)
(require 'neotree)
                                        ;(neotree-dir "~/projects/")
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))


(provide 'dumeng-neotree)
;;; dumeng-neotree ends here
