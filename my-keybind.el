;; inspired by Xah Lee
(global-set-key (kbd "<f8>") 'execute-extended-command)
(global-set-key (kbd "<f7>") 'query-replace)
(global-set-key (kbd "<f6>") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "<f5>") 'ibuffer)
;;(global-set-key (kbd "C-x C-b") 'ibuffer)
;; disable Ctrl+z
(global-set-key (kbd "C-z") nil)


;; taken from http://stackoverflow.com/a/9697222 by da4c30ff
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)
        (next-line)))

(provide 'my-keybind)
