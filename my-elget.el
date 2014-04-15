(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

;; the `required` packages.
(setq
 my-get-packages 
 '(el-get
   ;; complete
   auto-complete
   yasnippet
   ;; paredit
   paredit
   rainbow-delimiters
   ;; misc
   undo-tree
   smex
   ;; modes
   auctex
   clojure-mode
   cider
   coffee-mode
   go-mode
   markdown-mode
   ruby-mode
   lua-mode
   ;; color themes
   color-theme-tomorrow
   color-theme-tangotango))
(el-get 'sync my-get-packages)

(provide 'my-elget)
