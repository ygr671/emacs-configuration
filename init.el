(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package orderless
:ensure t
:custom
(completion-styles '(orderless basic))
(completion-category-overrides '((file (styles basic partial-completion)))))

(use-package consult
  :ensure t
  :bind (
	 ("M-s b" . consult-buffer)
	 ("M-s g" . consult-grep)
	 ("M-s j" . consult-outline)
	 ))


;; Disable startup message
(setq inhibit-startup-message t)

;; Disable backup files
(setq make-backup-files nil)

;; A little personal thingy :p
(setq frame-title-format (list "yzd - %b"))

;; Set Dired listing switches for a minimalistic output
(setq dired-listing-switches "-aghov --group-directories-first")

;; Disable menu
(menu-bar-mode -1)

;; Disable tool bar
(tool-bar-mode -1)

;; Disable scroll bar
(scroll-bar-mode -1)

;; Maximize the frame on startup
(toggle-frame-maximized)

;; Theme
(load-theme 'modus-vivendi t)

;; Giving some breathing space
(set-fringe-mode 10)

;; Custom keybindings
(global-set-key (kbd "<espace>") 'keyboard-escape-quit)

;; Automatic pairs
(electric-pair-mode 1)

;; Font
(set-face-attribute 'default nil :family "JetBrains Mono" :height 160)

;; Line numbers
(global-visual-line-mode 1)

;; Discord RPC Plugin
(use-package elcord)
(elcord-mode)

;; Org
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; Custom stuff (do not touch unless I know what I am doing)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(consult elcord magit orderless vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
