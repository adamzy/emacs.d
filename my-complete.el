;; el-get wiil automatically require them
;;(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; doesn't work in some cases, e.g. in coffeescript mode
;;(global-auto-complete-mode t)

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(ac-flyspell-workaround)


;; (require 'yasnippet)
(add-to-list 'yas/root-directory "~/Dropbox/git/yasnippet-snippets")
(yas-global-mode 1)

(provide 'my-complete)
