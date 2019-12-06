(use-package doom-themes
  :ensure t)

(setq doom-themes-enable-bold t    
      doom-themes-enable-italic t) 


(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (with-selected-frame frame
	      (load-theme 'doom-molokai t))))
    (load-theme 'doom-molokai t))
(doom-themes-org-config)

(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1) 
(delete-selection-mode 1)
(show-paren-mode t) 
(fset `yes-or-no-p `y-or-n-p)
(setq inhibit-startup-screen t)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(add-to-list 'default-frame-alist '(vertical-scroll-bars . nil))
(add-to-list 'default-frame-alist
	     '(font . "-*-Hack-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1"))

(setq apropos-sort-by-scores t)

(add-hook 'prog-mode-hook #'(lambda ()
			      (font-lock-add-keywords
			       nil
			       '(("\\<\\(FIXME\\|TODO\\|BUG\\|NOTE\\):"
				  1 font-lock-warning-face
				  t)))))

(set-face-foreground 'font-lock-warning-face "Red")
(set-face-underline 'font-lock-warning-face "Yellow")
(set-face-attribute 'font-lock-warning-face nil :weight 'bold)


