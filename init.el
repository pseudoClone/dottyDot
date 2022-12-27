(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(wheatgrass))
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(yasnippet yasnippet-snippets yasnippet use-package vterm vertico))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono NL" :foundry "JB" :slant normal :weight semi-bold :height 113 :width normal)))))
(defalias 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-screen t)
(setq auto-save-default nil)

(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "C-<iso-lefttab>") 'previous-buffer)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Source:https://caiorss.github.io/Emacs-Elisp-Programming/Customization.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun display-startup-echo-area-message ()
  ;; "If it wasn't for this you'd be GNU/Spammed by now"
  (message ""))

;; Don't insert instructions in the *scratch* buffer
(setq initial-scratch-message nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq make-backup-files nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;Company-mode config
;; (use-package company
;;      :ensure t
;;      :init
;;      (add-hook 'after-init-hook 'global-company-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq-default cursor-type 'bar)


(use-package vterm
    :ensure t)


(electric-pair-mode 1)
(setq sgml-quick-keys 'close)

;;Vertico
(require 'vertico)
(vertico-mode)


;;Yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


