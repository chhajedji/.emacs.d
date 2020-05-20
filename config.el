;; `ansi-term` will launch bash without prompt.
(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; This package highlights cursor for very small time when switching
;; buffers.
(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

(load-file "/usr/share/emacs/site-lisp/xcscope/xcscope.el")
(require 'xcscope)

(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere 1)
(ido-mode 1)

(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))

;; Hide toolbar, menubar and scrollbar.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Do not show welcome screen on startup.
(setq inhibit-startup-screen t)

;; Define alias for yes or no.
(defalias 'yes-or-no-p 'y-or-n-p)

;; Scroll line by line when reached end of screen.
(setq scroll-conservatively 100)

;; Ignore bell.
(setq ring-bell-function 'ignore)

;; When using GUI version, convert symbol text into symbols.
(when window-system (global-prettify-symbols-mode t))

;; Do not create backup and autosave files.
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Show line number and relative numbers.
(global-display-line-numbers-mode t)
(setq global-display-line-numbers 'relative)

;; Set transperant background.
(set-frame-parameter (selected-frame) 'alpha '(85 75))
(add-to-list 'default-frame-alist '(alpha 85 75))

(global-set-key (kbd "C-x b") 'ibuffer)
