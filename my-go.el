;;(require 'go-mode)
(require 'go-autocomplete)

;;(add-hook 'go-mode-hook 'smartparens-mode)

(add-hook 'before-save-hook 'gofmt-before-save)


;; (add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")
;; (require 'go-flymake)
(provide 'my-go)
