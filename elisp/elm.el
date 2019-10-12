;; Packages for working with Elm

;; Configuration based on:
;; https://www.lambdacat.com/post-modern-emacs-setup-for-elm/

;; Packages manually installed:

;;    elm-mode
;;    flycheck
;;    flycheck-elm
;;    company: already installed
;;    elm-oracle

;; Elm-mode
(require 'elm-mode)

;; Flycheck
(require 'flycheck)
(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

;; Company for Elm
(with-eval-after-load 'company
  '(add-to-list 'company-backends 'company-elm))
(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)

(add-hook 'elm-mode-hook
	  (lambda ()
	    (setq company-backends '(company-elm))))
