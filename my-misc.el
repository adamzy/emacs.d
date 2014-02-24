;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "<f5>") 'speedbar)

;; disable Ctrl+z
(global-set-key (kbd "C-z") nil)

(global-undo-tree-mode 1)

(setq default-major-mode 'text-mode)
;;(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'turn-spell-checking-on)

;; emacsclient
;; use C-x k to kill a client
(add-hook 'server-switch-hook
            (lambda ()
              (when (current-local-map)
                (use-local-map (copy-keymap (current-local-map))))
	      (when server-buffer-clients
		(local-set-key (kbd "C-x k") 'server-edit))))

(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (when server-buffer-clients
              (local-set-key (kbd "C-x C-c") 'server-edit))))


(provide 'my-misc)
