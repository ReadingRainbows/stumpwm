
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-hl-line-mode t)
 '(global-hl-line-sticky-flag t)
 '(package-selected-packages
   (quote
    (company auto-complete flycheck neotree treemacs-projectile xresources-theme lispyville zenburn-theme helm auctex slime evil ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set Melpa config for more packages
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                        ("org" . "http://orgmode.org/elpa/")
			("gnu" . "http://elpa.gnu.org/packages/")))

(add-to-list 'load-path "~/.emacs.d/init/")

(load-theme 'xresources t)

(require 'paredit)
(require 'init-paredit)
(require 'init-evil)
(require 'init-slime)
(require 'init-lisp)
(require 'init-helm)
(require 'init-latex)
(require 'init-docview)
(require 'init-treemacs)
(require 'init-flycheck)
(require 'init-autocomplete)
(require 'init-company)
