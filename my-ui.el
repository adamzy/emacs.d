;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic setup 
(add-to-list 'default-frame-alist '(font . "Monaco-22"))
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 26))
;(setq initial-frame-alist '((top . 0) (left . 0) (width . 80) (height . 20)))

(setq byte-compile-warnings nil)
(setq stack-trace-on-error nil)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)

;; no blink cursor
(blink-cursor-mode 0)

(setq default-fill-column 60)

;; no tool-bar
(tool-bar-mode -1)

(show-paren-mode t)
;; highlight just brackets
(setq show-paren-style 'parenthesis)
;; highlight entire bracket expression
;; (setq show-paren-style 'expression) 

;; turn on automatic bracket insertion by pairs. New in emacs 24
(electric-pair-mode 1)

;; auto indent
(electric-indent-mode 1)

;; Disable backup with "~"
(setq make-backup-files nil)
;; Disable auto-save with "#"
(setq auto-save-default nil)
;; store all backup and autosave files in the tmp dir
;; (setq auto-save-file-name-transforms
;;       `((".*" ,temporary-file-directory t)))

(setq ring-bell-function 'ignore)
(setq visible-bell 0)
(setq inhibit-splash-screen t)
(set-language-environment 'English)
(setq default-buffer-file-coding-system 'utf-8)

(prefer-coding-system 'big5)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-8)

;; intended
(color-theme-tomorrow-night-eighties)
(color-theme-tangotango)

(provide 'my-ui)
