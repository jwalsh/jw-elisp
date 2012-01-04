;; http://www.emacswiki.org/emacs/GoodFonts
(set-face-attribute 'default nil :family "Inconsolata" :height 100)

;; http://technomancy.us/153
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-js
                      starter-kit-bindings
                      clojure-mode
                      clojure-test-mode
                      magit
                      paredit
                      js2-mode
                      gist
                      markdown-mode
                      yaml-mode
                      tuareg
                      marmalade
                      scpaste))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Not recommended
(menu-bar-mode  t)

(defun jw/beginning-of-buffer ()
  "Move to the beginning of the buffer."
  (interactive)
  (push-mark)
  (goto-char (point-min)))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "bitstream" :family "Bitstream Vera Sans Mono")))))
