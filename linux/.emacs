(require 'org-install)

(add-to-list 'load-path "~/elisp")

;; load asciidoc highlight mode
(add-to-list 'auto-mode-alist '("\\.doc$" . doc-mode))

;;enter doc-mode (for asciidoc) automatically
(autoload 'doc-mode "doc-mode")

;;; turn on syntax hilighting
(global-font-lock-mode 1)                     ; for all buffers
(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

;; open with a single window
(setq inhibit-startup-screen t)
(add-hook 'emacs-startup-hook 'delete-other-windows)

;; markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;(require 'org-latex)


;; sql mode
;;(require 'sql)
;;(defalias 'sql-get-login 'ignore)

;; zenburn color theme
;;(load "color-theme-zenburn.el")
;;(load "color-theme-twilight.el")
;;(color-theme-zenburn)

;;(load "php-mode")
;;(load "sql-mode")

;;(add-to-list 'auto-mode-alist
;;    '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

;;(autoload 'sql "sql-mode"
;; "Start the interactive SQL interpreter in a new buffer." t)

;;(autoload 'sql-mode "sql-mode"
;; "Mode for editing SQL files and running a SQL interpreter." t)

;;(autoload 'sql-buffer "sql-mode"
;; "Create or move to the sql-mode \"*SQL commands*\" buffer." t)

;;(setq auto-mode-alist (cons '("\\.sql$" . sql-mode) auto-mode-alist))


;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))


;;mode-compile
;;;;(autoload 'mode-compile "mode-compile"
;;;;  "Command to compile current buffer file based on the major mode" t)
;;;;(global-set-key "\C-cc" 'mode-compile)
;;;;(autoload 'mode-compile-kill "mode-compile"
;;;;  "Command to kill a compilation launched by `mode-compile'" t)
;;;;(global-set-key "\C-ck" 'mode-compile-kill)


;; ************
;; * ORG MODE *
;; ************
;; org mode activation
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; wraps long lines
(setq org-startup-truncated nil)

;; trun off subscripts completely
(setq org-export-with-sub-superscripts nil)

;; TODO keywords
(setq org-todo-keywords
      '((sequence "TODO" "INPROGRESS" "|" "DONE" "DELEGATED" "CANCELED")))

;; keep track of when TODO finished
(setq org-log-done 'time)

;; enter a note when TODO finished
(setq org-log-done 'note)

;; with this M_{star} will still be a subscript, but M_star not.
;; 2010.09.10 this didn't seem to work, but prior fit the bill so
;;   didn't pursue why not
;;(setq org-export-with-sub-superscripts '{})

;;(setq org-todo-keywords
;;      '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))'


(transient-mark-mode 1)
(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "perl /home/richs/bin/Markdown/Markdown.pl"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
