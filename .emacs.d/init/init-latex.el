(defun preview-pdf-makefile-other-window ()
  "If the frame is not split vertically or horizontally, split it and select .pdf in preview mode"
  (interactive)
   (let ((pdf-file (parse-makefile-for-output (concat default-directory "Makefile"))))
     (when (file-exists-p (concat pdf-file "\.pdf"))
       (with-temp-buffer
	 (find-file (concat pdf-file "\.pdf"))))))


(defun parse-makefile-for-output (filepath)
  (let ((file-string
	  (with-temp-buffer
	    (insert-file-contents filepath)
	    (split-string (buffer-string) "\n" t))))
    (dolist (tmp file-string result)
      (when (string-match "PRJNAME = " tmp)
	(return
	  (setq result (replace-regexp-in-string "[' ()]" ""
					  (format "%s" (last (split-string tmp "=" t))))))))))

(global-set-key (kbd "C-c C-o C-p") 'preview-pdf-makefile-other-window)

(provide 'init-latex)
