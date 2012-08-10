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
(load "kdbp-mode")

;(let ((default-directory "~/.emacs.d/el-get/"))
;      (normal-top-level-add-subdirs-to-load-path))


(load "color-theme-yike-white")
(setq calender-location-name "New York, NY")
(setq calender-latitude 40.714523)
(setq calender-longitude -74.0066)
;; (color-theme-yike-white)

(require 'midnight)
(midnight-delay-set 'midnight-delay "4:30am")

(load "elscreen" "ElScreen" t)
(require 'elscreen-gf)

(require 'powerline)
(setq powerline-arrow-shape 'arrow14)

(defvar my-fullscreen-p t "Check if fullscreen is on or off")

(defun my-toggle-fullscreen ()
  (interactive)
  (setq my-fullscreen-p (not my-fullscreen-p))
  (if my-fullscreen-p
	  (restore-frame)
	(maximize-frame)))

;(global-set-key (kbd "<s-return>") 'my-toggle-fullscreen)
(global-set-key (kbd "<s-return>") 'ns-toggle-fullscreen)
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
        (progn
          (select-window w3m-exists)
          (w3m-browse-url url))
      (let ((splittable (split-window-sensibly (selected-window))))
        (if splittable
            (progn
              (select-window splittable)
              (w3m-browse-url url new-session))
          (w3m-browse-url url new-session))))))

(setq browse-url-browser-function 'my-w3m-browse-url)
;; end of my version


(add-to-list 'ac-dictionary-directories "/Users/yikelu/.emacs.d//ac-dict")
(ac-config-default)
(setq ac-auto-show-menu 2)
(require 'yasnippet)
(yas/global-mode 1)
(require 'auto-complete-yasnippet)

; now customizations

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(clean-buffer-list-delay-general 5)
 '(clean-buffer-list-delay-special 3600)
 '(color-theme-is-cumulative nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(doc-view-continuous t)
 '(ess-default-style (quote C++))
 '(fill-column 80)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-subword-mode t)
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(midnight-delay "4:30am")
 '(org-agenda-files nil)
 '(org-export-latex-classes (quote (("article" "\\documentclass[11pt]{article}
            \\usepackage{amsmath}
            \\usepackage{mathtools}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[11pt]{report}
            \\usepackage{amsmath}
            \\usepackage{mathtools}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[11pt]{book}
            \\usepackage{amsmath}
            \\usepackage{mathtools}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("beamer" "\\documentclass{beamer}" org-beamer-sectioning))))
 '(org-file-apps (quote ((auto-mode . emacs) ("\\.mm\\'" . default) ("\\.x?html?\\'" . default))))
 '(package-archives (quote (("ELPA" . "http://tromey.com/elpa/") ("marmalade" . "http://marmalade-repo.org/packages/") ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(paren-sexp-mode t)
 '(quack-default-program "racket")
 '(quack-pretty-lambda-p t)
 '(ring-bell-function (quote ignore) t)
 '(scroll-bar-mode nil)
 '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/usr/include/c++")))
 '(show-paren-mode t)
 '(tab-width 4)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
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
 '(elscreen-tab-background-face ((t (:background "#1e2426"))))
 '(elscreen-tab-control-face ((t (:background "#2e3436" :foreground "#eeeeec" :underline t))))
 '(elscreen-tab-current-screen-face ((t (:background "#2e3436" :foreground "#eeeee2"))))
 '(elscreen-tab-other-screen-face ((t (:background "controlShadowColor" :foreground "black" :underline t))))
 '(font-lock-comment-face ((t (:foreground "grey60"))))
 '(mode-line ((t (:background "midnightblue" :foreground "#eeeeec" :box (:line-width -1 :style released-button)))))
 '(mode-line-inactive ((t (:background "#555753" :foreground "#eeeeec"))))
 '(paren-face-match ((t (:background "grey20")))))
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

(add-to-list 'load-path "~/.emacs.d/ess-12.04-4/lisp/")
(require 'ess-site)
(setq ess-use-auto-complete t)
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
(require 'r-autoyas)
(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
(add-hook 'inferior-ess-mode-hook
          (lambda ()
            (define-key inferior-ess-mode-map "\C-cw"
              'ess-execute-screen-options))
          (lambda ()
            (define-key inferior-ess-mode-map (kbd "C-_")
              'ess-smart-underscore)))

(global-unset-key (kbd "C-_"))
(add-hook 'ess-mode-hook
          (lambda ()
            (define-key ess-mode-map (kbd "C-_")
              'ess-smart-underscore)))

(setq ac-source-R
      '((prefix . ess-ac-start)
       (requires . 2)
       (candidates . ess-ac-candidates)
       (document . ess-ac-help)))


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

;; If the var is set, save its status on entry and set it to nil
(add-hook 'minibuffer-setup-hook
          '(lambda ()
             (when (and (boundp paren-sexp-mode)
                        paren-sexp-mode)
               (setq paren-sexp-mode-status paren-sexp-mode)
               (setq paren-sexp-mode nil))))

;; then on exit, put it back to the way it was
(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (when (boundp paren-sexp-mode-status)
               (setq paren-sexp-mode paren-sexp-mode-status))))

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

(add-hook 'org-mode-hook 'turn-on-org-cdlatex)

(when (eq system-type 'darwin)
  (setq exec-path (append exec-path '("/usr/texbin/")))
  (setq exec-path (append exec-path '("/usr/local/bin")))

  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))  
  (setenv "PATH" (concat "/usr/texbin:" (getenv "PATH"))))



;; ;; some ocaml stuff
;; (autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
;; (autoload 'camldebug "camldebug" "Run the Caml debugger" t)
;; (autoload 'tuareg-imenu-set-imenu "tuareg-imenu" 
;;  "Configuration of imenu for tuareg" t) 
;; (add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
;; (setq auto-mode-alist 
;;      (append '(("\\.ml[ily]?$" . tuareg-mode)
;;                ("\\.topml$" . tuareg-mode))
;;              auto-mode-alist))

;; (setq auto-mode-alist
;;           (cons '("\\.ml[iyl]?$" .  caml-mode) auto-mode-alist))

;; ;; you should probably comment the next line or replace ~remy by another path 
;; (add-to-list 'load-path "~/.emacs.d/ocaml-mode/")

;; (autoload 'caml-mode "ocaml" (interactive)
;;   "Major mode for editing Caml code." t)
;; (autoload 'camldebug "camldebug" (interactive) "Debug caml mode")

(add-to-list 'auto-mode-alist '("\\.ml[iylp]?$" . caml-mode))
(autoload 'caml-mode "caml" "Major mode for editing OCaml code." t)
(autoload 'run-caml "inf-caml" "Run an inferior OCaml process." t)
(autoload 'camldebug "camldebug" "Run ocamldebug on program." t)
(add-to-list 'interpreter-mode-alist '("ocamlrun" . caml-mode))
(add-to-list 'interpreter-mode-alist '("ocaml" . caml-mode))

(require 'caml-font)


 ;; Comment from the point to the end of line or, if the point is at the end
 ;; of a line and not following a comment, insert one.
 ;; If the current line already ends with a comment, remove it.
(defun caml-toggle-comment-endofline (u)
  (interactive "P")
  (if (eq u nil)
      (let ((init (point)) beg end end_comment)
        (progn
          (end-of-line)
          (setq end (point))
          (if (looking-back (regexp-quote comment-end))
              (progn ; remove the ending comment (naive)
                (beginning-of-line)
                (uncomment-region (point) end)
                (setq end (- end (string-width comment-start)
                             (string-width comment-end)))
                (goto-char (min init end)))
            (if (eq init end)
                (indent-for-comment)
              (progn
                (beginning-of-line)
                (search-forward-regexp "[^ \t]" end t)
                (backward-char 1); now at the 1st non-space of the line
                (setq beg (point))
                (if (eq beg nil)
                    ;; line is composed of spaces => new comment
                    (indent-for-comment)
                  (progn
                    (comment-region (max init beg) end)
                    (goto-char init))))))))
    (progn ; C-u prefix
      (insert "(**  *)")
      (forward-char 4))))

(add-hook 'caml-mode-hook
          '(lambda ()
             (define-key caml-mode-map "\C-c;"
               'caml-toggle-comment-endofline)))

(add-hook 'inferior-caml-mode-hooks
          '(lambda ()
             (define-key inferior-caml-mode-map "\C-c;"
               'caml-toggle-comment-endofline)))

(defun ac-ocaml-candidates (prefix)
  "Candidates for OCaml auto-completion"
  (let ((candidates)
	(module-name 
	  (when (string-match "\\([A-Za-z_][A-Za-z0-9_']*\\)[.]" prefix)
	    (match-string 1 prefix))))
    (if module-name
        (iter '(lambda (sym) (push (concat module-name "." sym) candidates))
              (ocaml-module-symbols (assoc module-name (ocaml-module-alist))))
      (iter
       '(lambda (mod)
	  (iter '(lambda (sym) (push sym candidates))
		(ocaml-module-symbols mod)))
       (ocaml-visible-modules))
      (iter '(lambda (mod) (push (car mod) candidates)) (ocaml-module-alist)))
    candidates))
        
(ac-define-source ocaml
  '((available . (require 'caml-help nil t))
    (candidates . (ac-ocaml-candidates ac-prefix))
    (prefix . "\\(?:[^A-Za-z0-9_.']\\|\\`\\)\\(\\(?:[A-Za-z_][A-Za-z0-9_']*[.]\\)?[A-Za-z0-9_']*\\)")
    (symbol . "s")))

;; (autoload 'utop "utop" "Toplevel for OCaml" t)
;; (setq inferior-caml-program "utop") ;; this didn't work

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
         (setq semantic-load-turn-useful-things-on t)
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
