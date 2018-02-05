(setq evil-want-C-u-scroll t)
(require 'evil)
(setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
(setq evil-emacs-state-modes nil)
(setq evil-move-cursor-back nil)
(evil-mode 1)
(provide 'init-evil)

