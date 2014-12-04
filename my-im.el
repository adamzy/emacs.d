;; Preparation:
;; 1) mkdir ~/.emacs.d/site-lisp/
;; 2) git clone git clone https://github.com/wenbinye/emacs-eim/ ~/.emacs.d/site-lisp/eim

(add-to-list 'load-path "~/.emacs.d/site-lisp/eim")
(autoload 'eim-use-package "eim" "Another emacs input method")
(setq eim-use-tooltip nil)

(register-input-method
 "eim-wb" "euc-cn" 'eim-use-package
 "五笔" "汉字五笔输入法" "wb.txt")
(register-input-method
 "eim-py" "euc-cn" 'eim-use-package
 "拼音" "汉字拼音输入法" "py.txt")

(setq default-input-method "eim-py")

(provide 'my-im)
