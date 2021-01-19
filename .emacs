;; SETUP:
;; M-x package-install monokai-pro-theme
;; Download agda from github. Cabal install agda-mode
;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(exec-path-from-shell-initialize)


;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(package-selected-packages
   '(auctex monokai-theme monokai-pro-theme dracula-theme exec-path-from-shell evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-datatype-face ((t (:foreground "#E6DB74"))))
 '(agda2-highlight-field-face ((t (:foreground "#A6E22E"))))
 '(agda2-highlight-function-face ((t (:foreground "#A6E22E"))))
 '(agda2-highlight-inductive-constructor-face ((t (:foreground "#F92672"))))
 '(agda2-highlight-keyword-face ((t (:foreground "#66D9EF"))))
 '(agda2-highlight-module-face ((t (:foreground "#AE81FF"))))
 '(agda2-highlight-number-face ((t (:foreground "#AE81FF"))))
 '(agda2-highlight-postulate-face ((t (:foreground "#E6DB74"))))
 '(agda2-highlight-primitive-face ((t (:foreground "#CE4045"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "#E6DB74"))))
 '(font-lock-comment-face ((t (:foreground "#75715E")))))

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
(define-key global-map (kbd "C-c C-u") 'agda2-goto-definition-keyboard)

(add-to-list 'auto-mode-alist '("\\.lagda.md\\'" . agda2-mode))

(load-theme 'monokai-pro)


