;; http://www.emacswiki.org/emacs/GoodFonts
(set-face-attribute 'default nil :family "Inconsolata" :height 95)

;; http://technomancy.us/153
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;;    slime-fuzzy
;;    anything-el-swank-fuzzy
;;     slime-ritz

(defvar my-packages
  '(starter-kit
    starter-kit-lisp
    starter-kit-js
    starter-kit-bindings
    slime
    ac-slime
    clojure-mode
    durendal
    clojurescript-mode
    screen-lines
    org
    jira
    json
    paredit
    yasnippet
    flymake
    anything-complete
    undo-tree
    magit
    magithub
    coffee-mode
    flymake-coffee
    js2-mode
    flymake-jshint
    closure-lint-mode
    bookmark+
    anything
    alpha
    gist
    popup
    erc-nick-notify
    htmlize
    markdown-mode
    marmalade
    scpaste))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Custom installations

;; http://cx4a.org/software/auto-complete/manual.html#Installation
;; git clone https://github.com/m2ym/auto-complete.git
;; %  make install DIR=$HOME/.emacs.d/
(add-to-list 'load-path "~/sandbox/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; https://github.com/purcell/ac-slime
(add-to-list 'load-path "~/sandbox/ac-slime")
(require 'ac-slime)

;; Not recommended but I find it useful for exploration
(menu-bar-mode  t)

;; (require 'midje-mode)
;; $ lein plugin install swank-clojure 1.3.1
;; (add-hook 'clojure-mode-hook 'turn-on-paredit)



(require 'undo-tree)

(add-hook 'clojure-mode-hook 'undo-tree)


;; https://github.com/briancarper/dotfiles/blob/master/.emacs


;; org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(setq org-startup-indented t)

(setq org-directory "~/Dropbox/Org")
(setq org-mobile-directory "~/Dropbox/MobileOrg/")
(setq org-agenda-files '("~/Dropbox/Org/my.org"))
(setq org-mobile-inbox-for-pull "~/Dropbox/Org/inbox.org")


(global-set-key "\C-R" 'undo-tree-redo)
(add-hook 'undo-mode-visualizer-mode
          (define-key undo-tree-visualizer-map
            (kbd "<return>")
            'undo-tree-visualizer-quit))

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
 '(c-basic-offset 2)
 '(display-time-mode t)
 '(jira-url "http://jiraprod.sea.corp.int.untd.com/jira/rpc/xmlrpc")
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-cleanup-whitespace t)
 '(js2-highlight-level 3)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'ido-exit-minibuffer 'disabled nil)
