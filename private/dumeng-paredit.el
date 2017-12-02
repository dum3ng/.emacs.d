;;; package --- Summary:

;;; Commentary:

;;; Code:

;; remove M-s from guide key seq

                                        ;(delete "M-s" guide-key/guide-key-sequence)

(global-set-key (kbd "M-s s") 'paredit-splice-sexp)

                                        ;(global-unset-key (kbd "M-s /"))
;; (global-set-key (kbd  "M-<f7>") 'speedbar-get-focus)




(provide 'dumeng-paredit)
;;; dumeng-paredit ends here
