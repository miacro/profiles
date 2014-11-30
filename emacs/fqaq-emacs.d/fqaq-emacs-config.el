;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;font
(require 'fqaq-fonts-config)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;auctex
(add-to-list 'load-path "/usr/share/emacs/site-lisp/auctex")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;cscope
;;(require 'xcscope)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;透明度
(require 'fqaq-alpha-config)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;emms
(add-to-list 'load-path "/usr/share/emacs/site-lisp/emms/")
(require 'emms-setup)
(emms-standard)
(emms-default-players)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ecb
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
(require 'ecb)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;显示行号
(require 'linum)
(global-linum-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;w3m
(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m/")
(require 'w3m-load)
(require 'mime-w3m)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;auto-complete-clang
(require 'fqaq-autocomplete-config)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;cedet
;;(require 'cedet)
;;(global-ede-mode t)
(provide 'fqaq-emacs-config)
