(require 'lispy)
(require 'lispyville)
(add-hook 'emacs-lisp-mode-hook (lambda () (lispy-mode 1)))
(add-hook 'lispy-mode-hook #'lispyville-mode)

;; (defun conditionally-enable-lispy ()
;;   (when (eq this-command 'eval-expression)
;;     (lispy-mode 1)))

;; (add-hook 'minibuffer-setup-hook 'conditionally-enable-lispy)

(with-eval-after-load 'lispyville
  (lispyville-set-key-theme
   '(operators
     c-w
     (escape insert)
     (additional-movement normal visual motion))))

(add-hook
 'emacs-lisp-mode-hook
 (lambda ()
   ;; (column-marker-3 80)
   (paredit-mode +1)
   (eldoc-mode +1)
   (define-key emacs-lisp-mode-map (kbd "C-c C-c") 'compile-defun)))

(provide 'init-lisp)
