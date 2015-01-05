(add-hook 'lisp-mode-hook  #'enable-paredit-mode)
(add-hook 'scheme-mode-hook  #'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook  #'enable-paredit-mode)
(add-hook 'clojure-mode-hook  #'enable-paredit-mode)

;; (defun switch-colon-and-semicolon
;;   (interactive)
;;   (define-key key-translation-map (kbd ";") (kbd ":"))
;;   (define-key key-translation-map (kbd ":") (kbd ";")))
  
;; (add-hook 'clojure-mode-hook 'switch-colon-and-semicolon)

(provide 'my-lisp)
