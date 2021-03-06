(eval-when-compile    (require 'color-theme))
(defun color-theme-yike-white ()
  "Color theme by Yike Lu, created 2012-06-23."
  (interactive)
  (color-theme-install
   '(color-theme-yike-white
     ((background-color . "White")
      (background-mode . light)
      (cursor-color . "grey")
      (foreground-color . "Black"))
     ((ac-fuzzy-cursor-color . "red")
      (compilation-message-face . underline)
      (cua-global-mark-cursor-color . "cyan")
      (cua-normal-cursor-color . "grey")
      (cua-overwrite-cursor-color . "yellow")
      (cua-read-only-cursor-color . "darkgreen")
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . match)
      (org-goto-interface . outline)
      (term-default-bg-color . "White")
      (term-default-fg-color . "Black")
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Anonymous_Pro"))))
     (ac-candidate-face ((t (:background "lightgray" :foreground "black"))))
     (ac-completion-face ((t (:foreground "darkgray" :underline t))))
     (ac-gtags-candidate-face ((t (:background "lightgray" :foreground "navy"))))
     (ac-gtags-selection-face ((t (:background "navy" :foreground "white"))))
     (ac-selection-face ((t (:background "steelblue" :foreground "white"))))
     (ac-yasnippet-candidate-face ((t (:background "sandybrown" :foreground "black"))))
     (ac-yasnippet-selection-face ((t (:background "coral3" :foreground "white"))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (nil))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (button ((t (:underline t))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "dark blue"))))
     (compilation-column-number ((t (:foreground "forest green"))))
     (compilation-error ((t (:bold t :weight bold :foreground "Red1"))))
     (compilation-info ((t (:bold t :foreground "Green3" :weight bold))))
     (compilation-line-number ((t (:foreground "sienna"))))
     (compilation-warning ((t (:bold t :foreground "Orange" :weight bold))))
     (completions-annotations ((t (:italic t :slant italic))))
     (completions-common-part ((t (:family "Anonymous_Pro" :foundry "apple" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "Black" :background "White" :stipple nil :height 120))))
     (completions-first-difference ((t (:bold t :weight bold))))
     (cua-global-mark ((t (:background "yellow1" :foreground "black"))))
     (cua-rectangle ((t (:background "maroon" :foreground "white"))))
     (cua-rectangle-noselect ((t (:background "dimgray" :foreground "white"))))
     (cursor ((t (:background "grey"))))
     (dired-directory ((t (:foreground "darkcyan"))))
     (dired-flagged ((t (:bold t :weight bold :foreground "Red1"))))
     (dired-header ((t (:foreground "forest green"))))
     (dired-ignored ((t (:foreground "grey50"))))
     (dired-mark ((t (:foreground "violet red"))))
     (dired-marked ((t (:bold t :weight bold :foreground "Red1"))))
     (dired-perm-write ((t (:foreground "firebrick"))))
     (dired-symlink ((t (:foreground "Purple"))))
     (dired-warning ((t (:bold t :weight bold :foreground "Red1"))))
     (eieio-custom-slot-tag-face ((t (:foreground "blue"))))
     (eldoc-highlight-function-argument ((t (:bold t :weight bold))))
     (elscreen-tab-background-face ((t (:background "black"))))
     (elscreen-tab-control-face ((t (:background "white" :foreground "black" :underline t))))
     (elscreen-tab-current-screen-face ((t (:background "white" :foreground "black"))))
     (elscreen-tab-other-screen-face ((t (:background "blue" :foreground "black" :underline t))))
     (escape-glyph ((t (:foreground "brown"))))
     (ess-bp-fringe-browser-face ((t (:foreground "medium blue"))))
     (ess-bp-fringe-inactive-face ((t (:foreground "DimGray"))))
     (ess-bp-fringe-logger-face ((t (:foreground "dark red"))))
     (ess-bp-fringe-recover-face ((t (:foreground "dark magenta"))))
     (ess-dbg-blink-ref-not-found-face ((t (:background "IndianRed4"))))
     (ess-dbg-blink-same-ref-face ((t (:background "steel blue"))))
     (ess-dbg-current-debug-line-face ((t (:background "tan"))))
     (ess-developer-indicator-face ((t (:bold t :background "deep sky blue" :foreground "red4" :weight bold))))
     (ess-tb-last-input-fringe-face ((t (:foreground "medium blue" :overline "medium blue"))))
     (ess-watch-current-block-face ((t (nil))))
     (file-name-shadow ((t (:foreground "grey50"))))
     (fixed-pitch ((t (:family "Monospace"))))
     (font-lock-builtin-face ((t (:foreground "MediumOrchid4"))))
     (font-lock-comment-delimiter-face ((t (:foreground "firebrick"))))
     (font-lock-comment-face ((t (:foreground "firebrick"))))
     (font-lock-constant-face ((t (:foreground "violet red"))))
     (font-lock-doc-face ((t (:foreground "dark goldenrod"))))
     (font-lock-function-name-face ((t (:foreground "darkcyan"))))
     (font-lock-keyword-face ((t (:foreground "Purple"))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-preprocessor-face ((t (:foreground "MediumOrchid4"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "dark goldenrod" :bold t))))
     (font-lock-type-face ((t (:foreground "forest green"))))
     (font-lock-variable-name-face ((t (:foreground "sienna"))))
     (font-lock-warning-face ((t (:bold t :foreground "Red1" :weight bold))))
     (fringe ((t (:background "grey95"))))
     (header-line ((t (:box nil :background "grey90" :foreground "grey20" :box nil))))
     (help-argument-name ((t (:italic t :slant italic))))
     (highlight ((t (:background "darkseagreen2"))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ido-incomplete-regexp ((t (:bold t :weight bold :foreground "Red1"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-subdir ((t (:foreground "red1"))))
     (isearch ((t (:background "magenta3" :foreground "lightskyblue1"))))
     (isearch-fail ((t (:background "RosyBrown1"))))
     (italic ((t (:italic t :slant italic))))
     (lazy-highlight ((t (:background "paleturquoise"))))
     (link ((t (:foreground "blue1" :underline t))))
     (link-visited ((t (:underline t :foreground "magenta4"))))
     (linum ((t (:foreground "grey50"))))
     (match ((t (:background "yellow1"))))
     (menu ((t (nil))))
     (minibuffer-prompt ((t (:foreground "medium blue"))))
     (mode-line ((t (:background "OliveDrab3" :foreground "black" :box nil))))
     (mode-line-buffer-id ((t (:bold t :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:box nil :background "grey90" :foreground "grey20" :box nil :weight light))))
     (mouse ((t (nil))))
     (next-error ((t (:background "ns_selection_color"))))
     (nobreak-space ((t (:foreground "brown" :underline t))))
     (ns-working-text-face ((t (:underline t))))
     (org-agenda-clocking ((t (:background "yellow1"))))
     (org-agenda-column-dateline ((t (:family "Anonymous_Pro" :weight normal :slant normal :underline nil :strike-through nil :background "grey90" :height 120))))
     (org-agenda-date ((t (:foreground "Blue1"))))
     (org-agenda-date-today ((t (:italic t :bold t :foreground "Blue1" :slant italic :weight bold))))
     (org-agenda-date-weekend ((t (:bold t :foreground "Blue1" :weight bold))))
     (org-agenda-dimmed-todo-face ((t (:foreground "grey50"))))
     (org-agenda-done ((t (:foreground "ForestGreen"))))
     (org-agenda-restriction-lock ((t (:background "yellow1"))))
     (org-agenda-structure ((t (:foreground "Blue1"))))
     (org-archived ((t (:foreground "grey50"))))
     (org-block ((t (:foreground "grey50"))))
     (org-checkbox ((t (:bold t :weight bold))))
     (org-checkbox-statistics-done ((t (:bold t :weight bold :foreground "ForestGreen"))))
     (org-checkbox-statistics-todo ((t (:bold t :weight bold :foreground "Red1"))))
     (org-clock-overlay ((t (:background "yellow1"))))
     (org-code ((t (:foreground "grey50"))))
     (org-column ((t (:background "grey90" :strike-through nil :underline nil :slant normal :weight normal :height 120 :family "Anonymous_Pro"))))
     (org-column-title ((t (:bold t :background "grey90" :underline t :weight bold))))
     (org-date ((t (:foreground "Purple" :underline t))))
     (org-done ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (org-drawer ((t (:foreground "Blue1"))))
     (org-ellipsis ((t (:foreground "DarkGoldenrod" :underline t))))
     (org-footnote ((t (:foreground "Purple" :underline t))))
     (org-formula ((t (:foreground "Firebrick"))))
     (org-headline-done ((t (:foreground "RosyBrown"))))
     (org-hide ((t (:foreground "white"))))
     (org-latex-and-export-specials ((t (:foreground "SaddleBrown"))))
     (org-level-1 ((t (:foreground "darkcyan"))))
     (org-level-2 ((t (:foreground "sienna"))))
     (org-level-3 ((t (:foreground "Purple"))))
     (org-level-4 ((t (:foreground "firebrick"))))
     (org-level-5 ((t (:foreground "forest green"))))
     (org-level-6 ((t (:foreground "violet red"))))
     (org-level-7 ((t (:foreground "MediumOrchid4"))))
     (org-level-8 ((t (:foreground "dark goldenrod"))))
     (org-link ((t (:foreground "Purple" :underline t))))
     (org-meta-line ((t (:foreground "firebrick"))))
     (org-mode-line-clock ((t (:box nil :foreground "black" :background "OliveDrab3"))))
     (org-property-value ((t (nil))))
     (org-quote ((t (:foreground "grey50"))))
     (org-scheduled ((t (:foreground "DarkGreen"))))
     (org-scheduled-previously ((t (:foreground "Firebrick"))))
     (org-scheduled-today ((t (:foreground "DarkGreen"))))
     (org-sexp-date ((t (:foreground "Purple"))))
     (org-special-keyword ((t (:foreground "RosyBrown"))))
     (org-table ((t (:foreground "Blue1"))))
     (org-tag ((t (:bold t :weight bold))))
     (org-target ((t (:underline t))))
     (org-time-grid ((t (:foreground "DarkGoldenrod"))))
     (org-todo ((t (:bold t :foreground "Red1" :weight bold))))
     (org-upcoming-deadline ((t (:foreground "Firebrick"))))
     (org-verbatim ((t (:foreground "grey50"))))
     (org-verse ((t (:foreground "grey50"))))
     (org-warning ((t (:bold t :weight bold :foreground "Red1"))))
     (outline-1 ((t (:foreground "darkcyan"))))
     (outline-2 ((t (:foreground "sienna"))))
     (outline-3 ((t (:foreground "Purple"))))
     (outline-4 ((t (:foreground "firebrick"))))
     (outline-5 ((t (:foreground "forest green"))))
     (outline-6 ((t (:foreground "violet red"))))
     (outline-7 ((t (:foreground "MediumOrchid4"))))
     (outline-8 ((t (:foreground "dark goldenrod"))))
     (popup-face ((t (:background "lightgray" :foreground "black"))))
     (popup-isearch-match ((t (:background "sky blue"))))
     (popup-menu-face ((t (:background "lightgray" :foreground "black"))))
     (popup-menu-selection-face ((t (:background "steelblue" :foreground "white"))))
     (popup-scroll-bar-background-face ((t (:background "gray"))))
     (popup-scroll-bar-foreground-face ((t (:background "black"))))
     (popup-tip-face ((t (:background "khaki1" :foreground "black"))))
     (powerline-grey22-white ((t (:background "grey22" :foreground "white" :box nil))))
     (powerline-grey40-white ((t (:background "grey40" :foreground "white" :box nil))))
     (pulse-highlight-face ((t (:background "#FFFFAA"))))
     (pulse-highlight-start-face ((t (:background "#FFFFAA"))))
     (quack-about-face ((t (:family "Helvetica"))))
     (quack-about-title-face ((t (:bold t :foreground "#008000" :weight bold :height 2.0 :family "Helvetica"))))
     (quack-banner-face ((t (:family "Helvetica"))))
     (quack-pltfile-dir-face ((t (:bold t :background "gray33" :foreground "white" :weight bold :height 1.2 :family "Helvetica"))))
     (quack-pltfile-file-face ((t (:bold t :background "gray66" :foreground "black" :weight bold :height 1.2 :family "Helvetica"))))
     (quack-pltfile-prologue-face ((t (:background "gray66" :foreground "black"))))
     (quack-pltish-class-defn-face ((t (:bold t :weight bold :foreground "purple3"))))
     (quack-pltish-colon-keyword-face ((t (:bold t :foreground "gray50" :weight bold))))
     (quack-pltish-comment-face ((t (:foreground "cyan4"))))
     (quack-pltish-defn-face ((t (:bold t :foreground "blue3" :weight bold))))
     (quack-pltish-keyword-face ((t (:bold t :weight bold))))
     (quack-pltish-module-defn-face ((t (:bold t :weight bold :foreground "purple3"))))
     (quack-pltish-paren-face ((t (:foreground "red3"))))
     (quack-pltish-selfeval-face ((t (:foreground "green4"))))
     (quack-smallprint-face ((t (:height 0.8 :family "Courier"))))
     (quack-threesemi-h1-face ((t (:bold t :weight bold :height 1.4 :family "Helvetica"))))
     (quack-threesemi-h2-face ((t (:bold t :weight bold :height 1.2 :family "Helvetica"))))
     (quack-threesemi-h3-face ((t (:bold t :weight bold :family "Helvetica"))))
     (quack-threesemi-semi-face ((t (:background "#c0ffff" :foreground "#a0ffff"))))
     (quack-threesemi-text-face ((t (:background "#c0ffff" :foreground "cyan4"))))
     (query-replace ((t (:foreground "lightskyblue1" :background "magenta3"))))
     (region ((t (:background "ns_selection_color"))))
     (scroll-bar ((t (nil))))
     (secondary-selection ((t (:background "yellow1"))))
     (semantic-decoration-on-fileless-includes ((t (:background "#f0fdf0"))))
     (semantic-decoration-on-includes ((t (nil))))
     (semantic-decoration-on-private-members-face ((t (:background "#8fffff"))))
     (semantic-decoration-on-protected-members-face ((t (:background "#fffff8"))))
     (semantic-decoration-on-unknown-includes ((t (:background "#fff0f0"))))
     (semantic-decoration-on-unparsed-includes ((t (:background "#ffff55"))))
     (semantic-highlight-edits-face ((t (:background "gray90"))))
     (semantic-highlight-func-current-tag-face ((t (:background "gray90"))))
     (semantic-tag-boundary-face ((t (:overline "blue"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (senator-intangible-face ((t (:foreground "gray25"))))
     (senator-momentary-highlight-face ((t (:background "gray70"))))
     (senator-read-only-face ((t (:background "#CCBBBB"))))
     (shadow ((t (:foreground "grey50"))))
     (show-paren-match ((t (:background "turquoise"))))
     (show-paren-mismatch ((t (:background "purple" :foreground "white"))))
     (sldb-catch-tag-face ((t (nil))))
     (sldb-condition-face ((t (nil))))
     (sldb-detailed-frame-line-face ((t (nil))))
     (sldb-frame-label-face ((t (nil))))
     (sldb-frame-line-face ((t (nil))))
     (sldb-local-name-face ((t (nil))))
     (sldb-local-value-face ((t (nil))))
     (sldb-non-restartable-frame-line-face ((t (nil))))
     (sldb-reference-face ((t (:underline t))))
     (sldb-restart-face ((t (nil))))
     (sldb-restart-number-face ((t (:bold t :weight bold))))
     (sldb-restart-type-face ((t (:foreground "Purple"))))
     (sldb-restartable-frame-line-face ((t (:foreground "lime green"))))
     (sldb-section-face ((t (nil))))
     (sldb-topline-face ((t (nil))))
     (slime-error-face ((t (:underline "red"))))
     (slime-highlight-face ((t (:background "darkseagreen2" :underline nil))))
     (slime-inspector-action-face ((t (:bold t :weight bold :foreground "Red1"))))
     (slime-inspector-label-face ((t (:foreground "violet red"))))
     (slime-inspector-topline-face ((t (nil))))
     (slime-inspector-type-face ((t (:foreground "forest green"))))
     (slime-inspector-value-face ((t (:foreground "MediumOrchid4"))))
     (slime-note-face ((t (:underline "brown4"))))
     (slime-reader-conditional-face ((t (:foreground "firebrick"))))
     (slime-repl-input-face ((t (:bold t :weight bold))))
     (slime-repl-inputed-output-face ((t (:foreground "Red"))))
     (slime-repl-output-face ((t (:foreground "dark goldenrod"))))
     (slime-repl-output-mouseover-face ((t (:foreground "Red" :box (:line-width 1 :color "black" :style released-button)))))
     (slime-repl-prompt-face ((t (:foreground "Purple"))))
     (slime-repl-result-face ((t (nil))))
     (slime-style-warning-face ((t (:underline "brown"))))
     (slime-warning-face ((t (:underline "orange"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:family "Sans Serif" :background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (vertical-border ((t (nil))))
     (w3m-anchor ((t (:foreground "blue"))))
     (w3m-arrived-anchor ((t (:foreground "navy"))))
     (w3m-bold ((t (:bold t :weight bold))))
     (w3m-current-anchor ((t (:bold t :underline t :weight bold))))
     (w3m-form-button ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
     (w3m-form-button-mouse ((t (:background "DarkSeaGreen1" :foreground "black" :box (:line-width 2 :style released-button)))))
     (w3m-form-button-pressed ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (w3m-header-line-location-content ((t (:background "Gray90" :foreground "DarkGoldenrod"))))
     (w3m-header-line-location-title ((t (:background "Gray90" :foreground "Blue"))))
     (w3m-history-current-url ((t (:background "yellow1" :foreground "navy"))))
     (w3m-image ((t (:foreground "ForestGreen"))))
     (w3m-image-anchor ((t (:background "light yellow"))))
     (w3m-insert ((t (:foreground "purple"))))
     (w3m-italic ((t (:italic t :slant italic))))
     (w3m-strike-through ((t (:strike-through t))))
     (w3m-tab-background ((t (:background "LightSteelBlue" :foreground "black"))))
     (w3m-tab-mouse ((t (:background "Gray75" :foreground "white" :box (:line-width -1 :style released-button)))))
     (w3m-tab-selected ((t (:background "Gray90" :foreground "black" :box (:line-width -1 :style released-button)))))
     (w3m-tab-selected-background ((t (:background "LightSteelBlue" :foreground "black"))))
     (w3m-tab-selected-retrieving ((t (:background "Gray90" :foreground "red" :box (:line-width -1 :style released-button)))))
     (w3m-tab-unselected ((t (:background "Gray70" :foreground "Gray20" :box (:line-width -1 :style released-button)))))
     (w3m-tab-unselected-retrieving ((t (:background "Gray70" :foreground "OrangeRed" :box (:line-width -1 :style released-button)))))
     (w3m-tab-unselected-unseen ((t (:background "Gray70" :foreground "Gray20" :box (:line-width -1 :style released-button)))))
     (w3m-underline ((t (:underline t))))
     (which-func ((t (:foreground "darkcyan"))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red1"))))
     (widget-documentation ((t (:foreground "dark green"))))
     (widget-field ((t (:background "gray85"))))
     (widget-inactive ((t (:foreground "grey50"))))
     (widget-single-line-field ((t (:background "gray85")))))))
(add-to-list 'color-themes '(color-theme-yike-white  "Yike's default white background theme" "Yike Lu"))
