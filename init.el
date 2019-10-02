(add-to-list 'load-path "~/.emacs.d/elisp/")

;; packages in elisp dir
(load-library "melpa")
(load-library "clojure")

(setq custom-file "~/.emacs.d/elisp/custom.el")
(load custom-file)
