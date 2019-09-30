;; Based on Instructions given in:

;; My Optimal GNU Emacs Settings for Developing Clojure (Revised)
;; http://fgiasson.com/blog/index.php/2016/06/14/my-optimal-gnu-emacs-settings-for-developing-clojure-revised/

;; Melpa

;; M-x package-install [RET] cider [RET]
;; M-x package-install [RET] company [RET]
;; M-x package-install [RET] monokai-theme [RET]
;; M-x package-install [RET] rainbow-delimiters [RET]
;; M-x package-install [RET] highlight-symbol [RET]
;; M-x package-install [RET] helm-ag [RET]

;; Configure Text Editor

;; UTF-8 as default encoding
(set-language-environment "UTF-8")

;; Set the default comment column to 70
(setq-default comment-column 70)

;; Every time a window is started, make sure it get maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Configuring Fonts
;; NOT DONE: SKIPPED

;; Cider

;; Enter cider mode when entering the clojure major mode
(add-hook 'clojure-mode-hook 'cider-mode)

;; Turn on auto-completion with Company-Mode
(global-company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; Replace return key with newline-and-indent when in cider mode.
(add-hook 'cider-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

;; Show parenthesis mode
(show-paren-mode 1)

;; rainbow delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Set theme & font size
(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/monokai-theme")
(load-theme 'monokai t)

;;
;; Update the color of the company-mode context menu to fit the Monokai theme
;; @source: https://github.com/search?q=deftheme+company-tooltip&type=Code
;;
(deftheme monokai-overrides)

(let ((class '((class color) (min-colors 257)))
      (terminal-class '((class color) (min-colors 89))))

  (custom-theme-set-faces
   'monokai-overrides

   ;; Linum and mode-line improvements (only in sRGB).
   `(linum
     ((,class :foreground "#75715E"
              :background "#49483E")))
   `(mode-line-inactive
     ((,class (:box (:line-width 1 :color "#2c2d26" :style nil)
                    :background "#2c2d26"))))

   ;; Custom region colouring.
   `(region
     ((,class :foreground "#75715E"
              :background "#49483E")
      (,terminal-class :foreground "#1B1E1C"
                       :background "#8B8878")))

   ;; Additional modes
   ;; Company tweaks.
   `(company-tooltip-common
     ((t :foreground "#F8F8F0"
         :background "#474747"
         :underline t)))

   `(company-template-field
     ((t :inherit company-tooltip
         :foreground "#C2A1FF")))

   `(company-tooltip-selection
     ((t :background "#349B8D"
         :foreground "#BBF7EF")))

   `(company-tooltip-common-selection
     ((t :foreground "#F8F8F0"
         :background "#474747"
         :underline t)))

   `(company-scrollbar-fg
     ((t :background "#BBF7EF")))

   `(company-tooltip-annotation
     ((t :inherit company-tooltip
         :foreground "#C2A1FF")))

   ;; Popup menu tweaks.
   `(popup-menu-face
     ((t :foreground "#A1EFE4"
         :background "#49483E")))

   `(popup-menu-selection-face
     ((t :background "#349B8D"
         :foreground "#BBF7EF")))

   ;; Circe
   `(circe-prompt-face
     ((t (:foreground "#C2A1FF" :weight bold))))

   `(circe-server-face
     ((t (:foreground "#75715E"))))

   `(circe-highlight-nick-face
     ((t (:foreground "#AE81FF" :weight bold))))

   `(circe-my-message-face
     ((t (:foreground "#E6DB74"))))

   `(circe-originator-face
     ((t (:weight bold))))))

;; helm-ag
;; NOT DONE: SKIPPED

;; Syntax Highlighting

; Syntax Highlighting
(require 'highlight-symbol)
(global-set-key (kbd "C-é") 'highlight-symbol-at-point)
(global-set-key (kbd "C-.") 'highlight-symbol-next)
(global-set-key (kbd "C-,") 'highlight-symbol-prev)
(global-set-key (kbd "C-;") 'highlight-symbol-query-replace)

;; Binding Some Keys
;; NOT DONE: SKIPPED
