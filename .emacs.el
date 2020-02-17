(setq browse-url-browser-function 'eww-browse-url) ; emacs browser
; (setq browse-url-browser-function 'browse-url-generic) ; generic browser
; (setq browse-url-browser-function 'browse-url-generic
;       browse-url-generic-program "~/dot/bin/chrome")

; Do not display the splash screen
(setq inhibit-startup-screen t)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
(setq org-log-done t)

(setq org-agenda-files (append '("~/log/org" "~/.emacs.d") (file-expand-wildcards "~/log/org/*/")))
