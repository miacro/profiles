;;自定义的路径设置
(add-to-list 'load-path "~/fqaq-emacs.d/")
(add-to-list 'load-path "~/.emacs.d/")
;;加载设置
;;(if (file-exists-p (concat my-em-con-dir "my-emacs-config.el"))(require 'my-emacs-config))
(require 'init)
(require 'fqaq-emacs-config)
