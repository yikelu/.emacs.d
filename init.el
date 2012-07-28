; path based stuff first
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
(global-ede-mode t)

;(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
;                         ("gnu" . "http://elpa.gnu.org/packages/")))

(add-to-list 'exec-path "/usr/local/bin/")
(add-to-list 'load-path "~/.emacs.d/")
(load "x11colors.el")

(require 'hungry-delete)
(global-hungry-delete-mode 1)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get") 
(unless (require 'el-get nil t)
  (with-current-buffer (url-retrieve-synchronously "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
                       (goto-char (point-max)) (eval-print-last-sexp))) 
(el-get 'sync)
(require 'magit)

;(let ((default-directory "~/.emacs.d/el-get/"))
;      (normal-top-level-add-subdirs-to-load-path))

(color-theme-initialize)
(load "color-theme-yike-white")
(setq calender-location-name "New York, NY")
(setq calender-latitude 40.714523)
(setq calender-longitude -74.0066)
(color-theme-yike-white)

;(setq color-theme-is-global t)

(load "elscreen" "ElScreen" t)

(require 'powerline)
(setq powerline-arrow-shape 'arrow14)

(defvar my-fullscreen-p t "Check if fullscreen is on or off")

(defun my-toggle-fullscreen ()
  (interactive)
  (setq my-fullscreen-p (not my-fullscreen-p))
  (if my-fullscreen-p
	  (restore-frame)
	(maximize-frame)))

;(setq mf-max-height 2560)
;(setq mf-max-width 1440)  ;; Pixel width of main monitor.
;(add-hook 'window-setup-hook 'maximize-frame t)

(global-set-key (kbd "<s-return>") 'my-toggle-fullscreen)
;(global-set-key (kbd "<s-return>") 'ns-toggle-fullscreen)
;(my-toggle-fullscreen)

;(setq inferior-lisp-program "ccl64") ; your Lisp system
(setq inferior-lisp-program "sbcl") ; sbcl for the tutorial
;(load "~/quicklisp/slime-helper.el")
(require 'slime)
(setq common-lisp-hyperspec-root "file://Users/yikelu/Documents/lisp/HyperSpec/")
(slime-setup '(slime-fancy slime-asdf slime-banner))

;; BIG FAT NOTICE - the slime problem from source install is
;; that the byte compile is wrong or something. Thus you
;; delete all the elc files in contrib then it will work.

(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
(add-hook 'slime-mode-hook 'set-up-slime-ac)

(require 'w3m)
(defun my-w3m-browse-url (url &optional new-session)
  (let ((w3m-exists (get-buffer-window "*w3m*")))
    (if w3m-exists
        (progn (select-window w3m-exists)
               (w3m-browse-url url))
      (let ((splittable (split-window-sensibly
                         (selected-window))))
        (if splittable
            (progn (select-window splittable) (w3m-browse-url url new-session))
          (w3m-browse-url url new-session))))))

(setq browse-url-browser-function 'my-w3m-browse-url)
;; end of my version


(add-to-list 'ac-dictionary-directories "/Users/yikelu/.emacs.d//ac-dict")
(ac-config-default)
(setq ess-use-auto-complete t)
(setq ac-auto-show-menu nil)

; now customizations

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(doc-view-continuous t)
 '(ess-default-style (quote C++))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(org-export-latex-classes (quote (("article" "\\documentclass[11pt]{article}
            \\usepackage{amsmath}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[11pt]{report}
            \\usepackage{amsmath}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[11pt]{book}
            \\usepackage{amsmath}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("beamer" "\\documentclass{beamer}" org-beamer-sectioning))))
 '(org-file-apps (quote ((auto-mode . emacs) ("\\.mm\\'" . default) ("\\.x?html?\\'" . default))))
 '(package-archives (quote (("ELPA" . "http://tromey.com/elpa/") ("marmalade" . "http://marmalade-repo.org/packages/") ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(quack-default-program "racket")
 '(quack-pretty-lambda-p t)
 '(ring-bell-function (quote ignore) t)
 '(scroll-bar-mode nil)
 '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/usr/include/c++")))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(w3m-default-display-inline-images t)
 '(w3m-use-cookies t)
 '(x-stretch-cursor t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "apple" :family "Anonymous_Pro"))))
 '(elscreen-tab-other-screen-face ((t (:background "controlShadowColor" :foreground "black" :underline t)))))
;  '(mode-line ((t (:background "purple" :box nil)))))
;(enlarge-window 1)


(defun kill-start-of-line ()
  "kill from point to start of line"
  (interactive)
  (kill-line 0)
  )

(global-set-key "\M-k" 'kill-start-of-line)

(require 'redo+)
(global-set-key (kbd "C-?") 'redo)

(load "~/.emacs.d/ess-12.04-2/lisp/ess-site")
;(load "ess-shift-enter.el")
;(load "r-font-lock-extra.el")
(ess-toggle-underscore nil)
(setq ess-ask-for-ess-directory nil)
(setq ess-eval-visibly-p nil)
(setq ess-eval-visibly-at-end nil)
;(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)
(setq ess-tracebug-prefix (kbd "M-c"))
(setq ess-use-tracebug t)
(add-hook 'inferior-ess-mode-hook
          (lambda ()
            (define-key inferior-ess-mode-map "\C-cw"
              'ess-execute-screen-options)))
(global-unset-key (kbd "C-_"))
(add-hook 'ess-mode-hook
          (lambda ()
            (define-key ess-mode-map (kbd "C-_")
              'ess-smart-underscore)))

;(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
;(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
;(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(setq multi-term-program "/bin/bash")

;(load "~/.emacs.d/haskell-mode-2.8.0/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)


(defun make-backup-file-name (file)
  (concat "~/.emacs.d/backup/" (file-name-nondirectory file) "~"))


(require 'ido)
(ido-mode 1)
(require 'tramp)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'mic-paren)
(paren-activate)

(require 'org-install)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq default-major-mode 'org-mode)
(setq org-completion-use-ido t)
(setq auto-mode-alist (cons '("README" . org-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.txt$" . org-mode) auto-mode-alist))
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d@/!)" "CANCELED(c@)")))
(require 'org-special-blocks)

(setq org-latex-to-pdf-process '("texi2dvi --pdf --clean --verbose --batch %f"))

(when (eq system-type 'darwin)
  (setq exec-path (append exec-path '("/usr/texbin/")))
  (setq exec-path (append exec-path '("/usr/local/bin")))

  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))  
  (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH"))))



;; some ocaml stuff
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
(autoload 'tuareg-imenu-set-imenu "tuareg-imenu" 
 "Configuration of imenu for tuareg" t) 
(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
(setq auto-mode-alist 
     (append '(("\\.ml[ily]?$" . tuareg-mode)
               ("\\.topml$" . tuareg-mode))
             auto-mode-alist))


(global-set-key (kbd "C-c s") 'query-replace)
(global-set-key (kbd "C-c r") 'query-replace-regexp)


(defun select-next-window ()
 "Switch to the next window"
 (interactive)
 (other-window 1))

(defun select-previous-window ()
 "Switch to the previous window"
 (interactive)
 (other-window -1))

(if window-system
  (progn 
         (global-linum-mode 1) ;; this makes doc-view really slow
         ;; this is the fix
         (add-hook 'doc-view-mode-hook (lambda () (linum-mode -1)))

         (global-set-key (kbd "M-]") 'select-next-window)
         (global-set-key (kbd "M-[")  'select-previous-window)
         (define-key w3m-mode-map "\M-]" nil)
         (define-key w3m-mode-map "\M-[" nil)
         (semantic-load-enable-gaudy-code-helpers)
         (require 'semantic-ia)
         (require 'semantic-gcc)
         (semantic-add-system-include "/usr/include" 'c++-mode)
         (semantic-add-system-include "/usr/include/c++" 'c++-mode)
         )
  (progn (require 'mouse)
         (xterm-mouse-mode t)
         (global-set-key [mouse-4] '(lambda ()
                                      (interactive)
                                      (scroll-down 1)))
         (global-set-key [mouse-5] '(lambda ()
                                      (interactive)
                                      (scroll-up 1)))
         (defun track-mouse (e))
         (setq mouse-sel-mode t)
         (global-set-key (kbd "M-N") 'select-next-window)
         (global-set-key (kbd "M-P")  'select-previous-window)
         ))
