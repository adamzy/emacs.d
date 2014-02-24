;;(setq tex-pDF-mode t)
(require 'tex)
(TeX-global-PDF-mode t)

(setq LaTeX-math-mode t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
;;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'turn-spell-checking-on)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(setq TeX-view-program-list '(("zathura" "zathura %o")))
(setq TeX-view-program-selection '((output-pdf "zathura")))
(setq TeX-clean-confirm nil)

;;;; doesn't work
;; (add-hook 'LaTeX-mode-hook
;;           (lambda () (local-set-key (kbd "C-0") TeX-clean)))

;; (add-hook 'LaTeX-mode-hook (lambda ()
;;                  (push 
;;                   '("Make" "latexmk -outdir=/tmp %t" TeX-run-TeX nil t
;;                 :help "Make pdf output using latexmk.")
;;                   TeX-command-list)))

(provide 'my-auctex)
