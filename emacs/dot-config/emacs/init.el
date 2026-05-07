(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(menu-bar-mode 1)
(scroll-bar-mode 1)
(tool-bar-mode -1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-to-list 'default-frame-alist
	     '(font . "GeistMono Nerd Font-14"))
(which-key-mode)

(use-package delsel
  :ensure nil
  :hook (after-init . delete-selection-mode))

(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula))

(use-package lsp-mode
  :ensure t
  :init)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package projectile
  :ensure t)

(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle))
