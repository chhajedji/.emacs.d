(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.org/packages/"))
(package-initialize)

;; Load the settings from config.org file.
(org-babel-load-file "~/.emacs.d/config.org")
