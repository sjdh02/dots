(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Set UNIX line endings
(setq default-buffer-file-coding-system 'utf-8-unix)

;; functions
(defun openBrace ()
  (interactive)
  (insert "{}")
  (goto-char (- (point) 1)))

(defun openParen ()
  (interactive)
  (insert "()")
  (goto-char (- (point) 1)))

(defun rustBuild ()
  (interactive)
  (with-current-buffer "*eshell*"
    (setq other-window-scroll-buffer "*eshell*")
    (scroll-other-window 200)
    (eshell-return-to-prompt)
    (insert "cargo build")
    (eshell-send-input)))

(defun openWindowSmall ()
  "open a pane below the current one and resize it."
  (interactive)
  (split-window-vertically 50))

;; Keybinds
(global-set-key (kbd "C-c C-g C-c") 'magit-commit)
(global-set-key (kbd "C-c C-g C-s") 'magit-status)
(global-set-key (kbd "C-c C-g C-p") 'magit-push)
(global-set-key (kbd "C-c C-g C-l") 'magit-log)
(global-set-key (kbd "C-c C-g C-h") 'magit-checkout)
(global-set-key (kbd "C-c C-[") 'openBrace)
(global-set-key (kbd "C-c C-9") 'openParen)
(global-set-key (kbd "C-c C-d") 'kill-whole-line)
(global-set-key (kbd "C-c C-q") 'query-replace)
(global-set-key (kbd "C-c C-r") 'replace-string)
(global-set-key (kbd "C-c C-f") 'rust-format-buffer)
(global-set-key (kbd "C-c C-<up>") 'enlarge-window)
(global-set-key (kbd "C-c C-o") 'openWindowSmall)

;; Formatting
(setq-default c-default-style "k&r"
	      c-basic-offset 4)
(setq rust-format-on-save nil)

;; ido mode
(require 'ido)
(ido-mode t)

;; Visual tweaks
(setq visible-bell nil
      ring-bell-function 'shutup-emacs-fn)
(defun shutup-emacs-fn()
  "disable the bell."
  )
(set-face-attribute 'default nil :font "Consolas-12")
(display-time-mode 1)
(setq display-time-format "%H:%M")
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(load-theme 'solarized-dark t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (solarized-theme nova-theme distinguished-theme bliss-theme web-mode json-mode typescript-mode yaml-mode toml-mode rust-mode cmake-mode markdown-mode org-bullets magit fixmee zig-mode gruvbox-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
