(require 'package)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/" user-emacs-directory))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
	 user-emacs-directory)
	((boundp 'user-init-directory)
	 user-init-directory)
	(t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "./lisp/misc.el")
(load-user-file "./lisp/evil.el")
(load-user-file "./lisp/helm.el")
(load-user-file "./lisp/init-org.el")
(load-user-file "./lisp/apperance.el")
(load-user-file "./lisp/paredit.el")
(load-user-file "./lisp/parens.el")
(load-user-file "./lisp/slime.el")
(load-user-file "./lisp/init-eshell.el")
(load-user-file "./lisp/magit.el")
(load-user-file "./lisp/company.el")
(load-user-file "./lisp/markdown.el")
(load-user-file "./lisp/window.el")
(load-user-file "./lisp/init-python.el")
(load-user-file "./lisp/functions.el")
(load-user-file "./lisp/brain.el")

;; (load-user-file "./lisp/multiple-cursors.el")
;; (load-user-file "./lisp/init-haskell.el")
;; (load-user-file "./lisp/flycheck.el")
;; (load-user-file "./lisp/julia.el")
;; (load-user-file "./lisp/init-eaf.el")
;; (load-user-file "./lisp/init-mu4e.el")
;; (load-user-file "./lisp/spotify.el")
;; (load-user-file "./lisp/godot-gdscript.el")
;; (load-user-file "./lisp/init-ibuffer.el")
;; (load-user-file "./lisp/init-vterm.el")
;; (load-user-file "./lisp/font.el")
