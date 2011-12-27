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
