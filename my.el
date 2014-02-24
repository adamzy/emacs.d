;; the main control file

;; el-get first
(require 'my-elget)

;; ui and misc init
(require 'my-ui)
(require 'my-misc)

;; then plugins
(require 'my-complete)
(require 'my-auctex)
(require 'my-paredit)
(require 'my-smex)
(require 'my-spell)

;; now modes
(require 'my-org)
(require 'my-lisp)
(require 'my-go)

;; Done
(provide 'my)
