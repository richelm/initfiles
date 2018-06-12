;; diable the splash screen
(setq inhibit-splash-screen t)

;; diable bell
(setq visible-bell 1)

;; enable soft word wrap
;;(setq visual-line-mode 1)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; disable menu bar
(menu-bar-mode -1)

;; custom themes load path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; load customized theme
;;(load-theme 'zenburn t)
(load-theme 'zenburn t)

;; enable transient mark mode
(transient-mark-mode 1)

;; **************************
;; * Org mode configuration *
;; **************************

;; enable org mode
(require 'org)

;;(setq org-todo-keywords
;;        '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "|" "DONE" "DELEGATED" "CANCELED")))

;; keep track of when TODO finished
(setq org-log-done 'time)

;; enter a note when TODO finished
(setq org-log-done 'note)

