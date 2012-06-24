(defun read-lines (file)
  "Return a list of lines in FILE."
  (with-temp-buffer
    (insert-file-contents file)
    (split-string
      (buffer-string) "\n" t)
    )
  )

(add-hook 'ess-mode-hook
          '(lambda()
             (setq ess-my-extra-R-function-keywords
                   (read-lines "~/.emacs.d/R_words"))
             (setq ess-R-common-font-lock-keywords
                   (append ess-R-common-font-lock-keywords
                           (list (cons (concat "\\<" (regexp-opt
                                                       ess-my-extra-R-function-keywords 'enc-paren) "\\>")
                                       'font-lock-function-name-face))))))

