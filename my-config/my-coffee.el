;; This gives you a tab of 2 spaces
(custom-set-variables '(coffee-tab-width 4))

;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))



(provide 'my-coffee)
