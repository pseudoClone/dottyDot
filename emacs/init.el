;; Emacs default variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(modus-vivendi))
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(company dumb-jump web-mode tree-sitter-langs tree-sitter markdown-mode csharp-mode rust-mode doom-themes php-mode magit powerline yasnippet yasnippet-snippets yasnippet use-package vertico))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

;; Set faces/fonts
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono NL" :foundry "JB" :slant normal :weight semi-bold :height 113 :width normal)))))

;; Yes or no to y or n
(defalias 'yes-or-no-p 'y-or-n-p)

(defun my-backward-delete-whitespace ()
  (interactive)
  (if (looking-back "    ")
      (backward-delete-char 4)
    (backward-delete-char 1)))

(global-set-key (kbd "DEL") 'my-backward-delete-whitespace)


;; No startup screen
(setq inhibit-startup-screen t)


;; No autosave
(setq auto-save-default nil)

;; Faster startup supressing garbage collector
(setq gc-cons-threshold 100000000)

;; Makes *scratch* empty.
(setq initial-scratch-message "")


;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Enable Melpa
(use-package package
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize))


;; Column and Whitespace
;; https://web.stanford.edu/class/cs107/resources/emacs_advanced
(use-package whitespace
  :config
  (setq whitespace-style '(face lines-tail))
  (setq whitespace-line-column 80) ;; Or whatever other column number.
  (global-whitespace-mode t))


;; Yasnippet Enable
(use-package yasnippet
  :config
  (yas-global-mode 1))


;; Word Wrap Global
(global-visual-line-mode t)


;; Tree-Sitter
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)



;;https://caiorss.github.io/Emacs-Elisp-Programming/Customization.html
(defun display-startup-echo-area-message ()
  ;; "If it wasn't for this you'd be GNU/Spammed by now"
  (message ""))



;; Don't insert instructions in the *scratch* buffer
(setq initial-scratch-message nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; No backup files
(setq make-backup-files nil)



;; PowerLine centre config
(use-package powerline
  :config
  (powerline-center-theme))



;; Enables parenthesis closing and region insertion
(electric-pair-mode 1)
(setq sgml-quick-keys 'close)



;;Vertico Mode
(use-package vertico
  :init
  (vertico-mode))
