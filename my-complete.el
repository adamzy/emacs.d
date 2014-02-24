;; el-get wiil automatically require them
;;(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; (require 'yasnippet)
(add-to-list 'yas/root-directory "~/Dropbox/git/yasnippet-snippets")
(yas-global-mode 1)

(provide 'my-complete)
