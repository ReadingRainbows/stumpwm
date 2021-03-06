(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(setq lisp-indent-function 'common-lisp-indent-function)
(load "/home/zinzon/quicklisp/clhs-use-local.el" t)
;;Add SBCL to slime
(setq inferior-lisp-program "/usr/bin/sbcl")
;;Add quicklisp to slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))
(slime-setup '(slime-fancy))
(provide 'init-slime)
