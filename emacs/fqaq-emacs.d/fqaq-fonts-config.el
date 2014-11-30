;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;font
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq window-system-default-frame-alist         ;; ;;设置默认字体为 WenQuanYi Micro Hei Mono
;;       '(                                        ;; ;;
;;         ;; if frame created on x display        ;; ;;
;;         (x                                      ;; ;;
;;          ;; face                                ;; ;;
;;          (font . "WenQuanYi Micro Hei Mono 10") ;; ;;
;;          )                                      ;; ;;
;;         )                                       ;; ;;
;;       )                                         ;; ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(set-language-environment 'UTF-8)
;;(set-locale-environment "UTF-8")
;;(set-default-font "Droid Sans Mono-10")
;;(set-fontset-font "fontset-default" 'unicode '("WenQuanYi Micro Hei Mono" . "unicode-ttf"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;中文字符集-WenQuanYi Micro Hei Mono;;英文-Droid Sans Mono
(create-fontset-from-fontset-spec
 (concat
  "-unknown-DejaVu Sans Mono-normal-normal-normal-*-16-*-*-*-m-0-fontset-droid,"
  "chinese-gb2312:-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-16-*-*-*-*-0-iso10646-1,"
  "chinese-gbk:-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-16-*-*-*-*-0-iso10646-1"
  ))
(set-default-font "fontset-droid");;使用fontset-droid
;;让emacs创建新frame时采用fontset-droid
(setq default-frame-alist
      (append
       '((font . "fontset-droid")) default-frame-alist))
(provide 'my-fonts-config)
