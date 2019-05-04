(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Set UNIX line endings
(setq default-buffer-file-coding-system 'utf-8-unix)

;; save and restore sessions
(desktop-save-mode 1)

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
(bind-key* "C-c C-g C-c" 'magit-commit)
(bind-key* "C-c C-g C-c" 'magit-commit)
(bind-key* "C-c C-g C-s" 'magit-status)
(bind-key* "C-c C-g C-p" 'magit-push)
(bind-key* "C-c C-g C-l" 'magit-log)
(bind-key* "C-c C-g C-h" 'magit-checkout)
(bind-key* "C-c C-[" 'openBrace)
(bind-key* "C-c C-9" 'openParen)
(bind-key* "C-c C-d" 'kill-whole-line)
(bind-key* "C-c C-q" 'query-replace)
(bind-key* "C-c C-r" 'replace-string)
(bind-key* "C-c C-f" 'rust-format-buffer)
(bind-key* "C-c C-<up>" 'enlarge-window)
(bind-key* "C-c C-o" 'openWindowSmall)

;; Formatting
(setq-default c-default-style "k&r"
	      c-basic-offset 4)
(setq rust-format-on-save t)
(setq paredit-mode t)

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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-term-color-vector
   [unspecified "#2e2e2e" "#bc8383" "#7f9f7f" "#d0bf8f" "#6ca0a3" "#dc8cc3" "#8cd0d3" "#b6b6b6"])
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "39fe48be738ea23b0295cdf17c99054bb439a7d830248d7e6493c2110bfed6f8" "7beac4a68f03662b083c9c2d4f1d7f8e4be2b3d4b0d904350a9edf3cf7ce3d7f" "de9fa4b3614611bed2fe75e105bd0d37542924b977299736f158dd4d7343c666" "e93b6d6a610a4de38b345eb5d57500ed115e12fd67bea1bb32720cd255bfd458" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" default)))
 '(frame-background-mode (quote dark))
 '(line-number-mode t)
 '(package-selected-packages
   (quote
    (paredit go d-mode go-mode grayscale-theme phoenix-dark-mono-theme overcast-theme eziam-theme white-theme punpun-theme minimal-theme use-package solarized-theme nova-theme distinguished-theme bliss-theme web-mode json-mode typescript-mode yaml-mode toml-mode rust-mode cmake-mode markdown-mode org-bullets magit fixmee zig-mode gruvbox-theme)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#32302f")))
 '(vc-annotate-background "#3C4C55")
 '(vc-annotate-color-map
   (\`
    ((20 \, "#DF8C8C")
     (40 \, "#e2978c")
     (60 \, "#e6a28d")
     (80 \, "#eaac8d")
     (100 \, "#eeb88e")
     (120 \, "#F2C38F")
     (140 \, "#edc78f")
     (160 \, "#e8cc90")
     (180 \, "#e3d091")
     (200 \, "#ded592")
     (220 \, "#DADA93")
     (240 \, "#d0d793")
     (260 \, "#c6d593")
     (280 \, "#bcd293")
     (300 \, "#b2d093")
     (320 \, "#A8CE93")
     (340 \, "#a0c7a3")
     (360 \, "#99c1b3")
     (380 \, "#91bbc4")
     (400 \, "#8ab5d4")
     (420 \, "#83AFE5")
     (440 \, "#87a9e4")
     (460 \, "#8ca3e3")
     (480 \, "#909ee2")
     (500 \, "#9598e1")
     (520 \, "#9A93E1"))))
 '(vc-annotate-very-old-color "#7b75b4"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
