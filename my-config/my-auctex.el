;;(setq tex-pDF-mode t)
(require 'tex)
(TeX-global-PDF-mode t)

(setq LaTeX-math-mode t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq-default TeX-engine 'xetex)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
;;(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'turn-spell-checking-on)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

;; set fold-mode and enable it for the whole buffer
(add-hook 'LaTeX-mode-hook (lambda ()
                             (TeX-fold-mode 1)
                             (TeX-fold-buffer)))

(setq TeX-view-program-list '(("zathura" "zathura %o")))
(setq TeX-view-program-selection '((output-pdf "zathura")))
(setq TeX-clean-confirm nil)

;; solve the problem "Error occured after last TeX file closed"
; (setq LaTeX-command-style '(("" "%(PDF)%(latex) -file-line-error %S%(PDFout)")))

;;;; doesn't work
;; (add-hook 'LaTeX-mode-hook
;;           (lambda () (local-set-key (kbd "C-0") TeX-clean)))

;; use latexmk to compile tex files
(add-hook 'LaTeX-mode-hook (lambda ()
  (push 
    '("latexmk" "latexmk -pdf %(mode) %s" TeX-run-TeX nil t
      :help "Run Latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

(provide 'my-auctex)
