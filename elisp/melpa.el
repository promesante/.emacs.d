;; Define packages archives repositories
(require 'package)

(add-to-list 'package-archives
  '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

(add-to-list 'package-archives 
  '("marmalade" . "https://marmalade-repo.org/packages/"))  

;; Initialize all the ELPA packages (what is installed using the packages commands)    
(package-initialize)
