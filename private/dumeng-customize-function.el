;;; package --- Summary:

;;; Commentary:

;;; Code:

(defun go-to-line-and-column-cond (lc-cond)
  "Allow a specification of LINE:COLUMN or LINE,COLUMN instead of just COLUMN.
Just :COLUMN or ,COLUMN moves to the specified column on the current line.
LINE alone still moves to the beginning of the specified line (like LINE:0 or LINE,0).
By Default I'm bind it to M-g M-l.
The default value of the COLUMN is decrement by -1
because all compilers consider the number of COLUMN from 1 (just for copy-past)"
  (interactive "sLine:Column:: ")
  (let (line delim column max-lines)
    (setq max-lines (count-lines (point-min) (point-max)))
    (save-match-data
      (string-match "^\\([0-9]*\\)\\([,:]?\\)\\([0-9]*\\)$" lc-cond)
      (setq line (string-to-number (match-string 1 lc-cond)))
      (setq delim (match-string 2 lc-cond))
      (setq column (string-to-number (match-string 3 lc-cond)))
      (if (not (equal delim "")) (if (> column 0) (setq column (1- column))))
      (if (= 0 line) (setq line (line-number-at-pos)))
      (if (> line max-lines) (setq line max-lines))
      (goto-line line)
      (move-to-column column)
      (message "Marker set to line %d column %s" (line-number-at-pos) (current-column))
      )))

(global-set-key (kbd "M-g M-l") 'go-to-line-and-column-cond)


;;;
(defun new-buffer (name)
  "Create a new buffer with NAME."
  (interactive "sbuffer name: ")
  (let ((buffer  (generate-new-buffer name)))
    (switch-to-buffer buffer)))



(defun insert-time ()
  (interactive)
  (insert (current-time-string)))

(defun time ()
  "Show a message of current time."
  (interactive)
  (message (current-time-string)))

(provide 'dumeng-customize-function)
;;; dumeng-customize-function ends here
