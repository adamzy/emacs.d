;; el-get wiil automatically require them
;;(require 'auto-complete)

(require 'pos-tip)

(require 'auto-complete-config)
(ac-config-default)

;; doesn't work in some cases, e.g. in coffeescript mode
;;(global-auto-complete-mode t)

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                           (auto-complete-mode 1))))

(real-global-auto-complete-mode t)

(ac-flyspell-workaround)

(add-to-list 'ac-user-dictionary-files (expand-file-name "./dict"))

(setq
 ac-delay 0
 ac-dwim nil ;; don't do-what-I-want, it is not smart enough
 ac-auto-show-menu 0.1
 ac-candidate-menu-min 1 ;; show menu for 2 or more candidates
 ac-disable-faces nil ;; auto-complete everywhere, even within quotes, comments
 ac-ignore-case nil ;; I wnat it be case-sensitive
 ac-use-quick-help nil ;; no pop-up help
 
 )

(ac-set-trigger-key "TAB")

;; (setq ac-expand-on-auto-complete nil)

(define-key ac-completing-map "\e" 'ac-stop)

(setq popup-use-optimized-column-computation nil)

;; (require 'yasnippet)
;; (add-to-list 'yas/root-directory "~/Dropbox/git/yasnippet-snippets")
;; (yas-global-mode 1)

(provide 'my-complete)
