;;(add-hook 'prog-mode-hook 'flyspell-prog-mode)
;;(setq-default flyspell-mode t)
;;(flyspell-mode 1)
(setq flyspell-issue-message-flag nil)

(defun turn-spell-checking-on ()
  "Turn speck-mode or flyspell-mode on."
  ;; (speck-mode 1)
  (flyspell-mode 1))

(provide 'my-spell)
