;; install package

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    material-theme))

(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
    myPackages)

;; custum config
(show-paren-mode t)
(transient-mark-mode 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(setq inhibit-startup-message 1)
(setq frame-title-format "%f")
(load-theme 'molokai t)
(global-linum-mode t)
(cua-mode t)
(setq cua-enable-cua-keys nil)
(setq makebackupfiles nil)
(savehist-mode 1)
(setq history-length 500)

;; (set-face-background 'highlight-indentation-face "#313131")
;; (set-face-background 'highlight-indentation-current-column-face "#777777")
;; (add-hook 'elpy-mode-hook 'highlight-indentatio-current-column-mode)

;; (let ((ls (member 'mode-line-buffer-indentification
;; 		  mode-line-format)))
;;  (setcdr ls
;;	  (cons '(:eval (concat "("
;;				(abbreviate-file-name default-derectory)
;;				")")))
;;	  (cdr ls)))
