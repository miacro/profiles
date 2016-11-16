
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setf *configuration-root-dir* "~/emacs.d/")
(add-to-list 'load-path *configuration-root-dir*)
;;(if (file-exists-p (concat my-em-con-dir "my-emacs-config.el"))(require 'my-emacs-config))
;(require 'init)
;;(load "~/.emacs.d/init.el")
(require 'init)
(put 'downcase-region 'disabled nil)
