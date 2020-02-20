;;; parchment-theme.el --- Light theme inspired by Acme and Leuven -*- lexical-binding: t -*-

;; Author: Alex Griffin <a@ajgrf.com>
;; URL: https://github.com/ajgrf/parchment
;; Version: 0.4.0-pre
;; Package-Requires: ((autothemer "0.2"))

;; Copyright © 2019, 2020 Alex Griffin <a@ajgrf.com>
;;
;;
;; Permission to use, copy, modify, and/or distribute this software for
;; any purpose with or without fee is hereby granted, provided that the
;; above copyright notice and this permission notice appear in all
;; copies.
;;
;; THE SOFTWARE IS PROVIDED "AS IS" AND ISC DISCLAIMS ALL WARRANTIES WITH
;; REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;; MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL ISC BE LIABLE FOR ANY
;; SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;; ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT
;; OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

;;; Commentary:

;; Parchment is a light theme inspired by the Leuven theme and the
;; Acme text editor. It's meant to be more subdued and easier on the
;; eyes than black-on-white, and less "busy" than most colorschemes.

;;; Code:

(deftheme parchment
  "A light colorscheme inspired by Acme and Leuven.")

(defvar parchment-want-modify-tty-colors nil
  "Whether to redefine the terminal colors that Emacs knows about.
Set to non-nil if you're using a matching parchment terminal theme.")

(defvar parchment-add-mode-hooks nil
  "Whether to add mode hooks to modify faces per major mode.
Allows better fine-tuning of styles, but may be too intrusive if you
switch themes often.")

(autothemer-deftheme parchment
  "Light theme inspired by Acme and Leuven"
  ((((class color) (min-colors #xFFFFFF))
    ((type tty)))

   (black        "#000000" "#000000")
   (red          "#880000" "#880000")
   (green        "#005500" "#005500")
   (brown        "#663311" "#663311")
   (blue         "#004488" "#004488")
   (magenta      "#770077" "#770077")
   (cyan         "#007777" "#007777")
   (beige        "#eeeecc" "#eeeecc")
   (pale-gray    "#eaeaea" "#eaeaea")
   (pale-red     "#ffeaea" "#ffeaea")
   (pale-green   "#eaffea" "#eaffea")
   (yellow       "#eeee9e" "#eeee9e")
   (pale-blue    "#cceeff" "#cceeff")
   (pale-magenta "#ffeaff" "#ffeaff")
   (pale-cyan    "#eaffff" "#eaffff")
   (pale-yellow  "#ffffea" "#ffffea")
   (shadow       "#808075" "#007777")
   (off-bg       "#f7f7db" "#ffffea"))

  ((default                    (:foreground black :background pale-yellow))
   (bold                       (:weight 'bold))
   (italic                     (:slant 'italic))
   (bold-italic                (:weight 'bold :slant 'italic))
   (underline                  (:underline t))
   (shadow                     (:foreground shadow))
   (link                       (:foreground blue :underline t))
   (link-visited               (:foreground magenta :underline t))
   (error                      (:foreground red))
   (warning                    (:foreground red))
   (success                    (:foreground green))

   ;; standard interface elements
   (cursor                     (:background black))
   (compilation-mode-line-exit (:inherit 'compilation-info :weight 'bold))
   (compilation-mode-line-fail (:inherit 'compilation-error :weight 'bold))
   (fringe                     (:foreground black :background pale-gray))
   (flyspell-incorrect         (:underline (:color "red" :style 'wave)))
   (flyspell-duplicate         (:underline (:color green :style 'wave)))
   (header-line                (:background pale-cyan :box (:line-width -1)))
   (highlight                  (:background pale-blue))
   (hl-line                    (:background beige))
   (isearch                    (:background pale-blue :weight 'bold))
   (isearch-fail               (:foreground red :background pale-red))
   (lazy-highlight             (:weight 'bold))
   (line-number                (:foreground black :background pale-gray))
   (linum                      (:inherit 'line-number))
   (match                      (:background yellow))
   (menu                       (:background pale-cyan :weight 'bold))
   (tty-menu-disabled-face     (:foreground cyan :background pale-cyan))
   (tty-menu-enabled-face      (:background pale-cyan))
   (tty-menu-selected-face     (:foreground pale-yellow :background cyan :weight 'bold))
   (minibuffer-prompt          (:background pale-blue :weight 'bold))
   (mode-line                  (:foreground black :background pale-gray :box (:color black :line-width -1)))
   (mode-line-inactive         (:foreground shadow :background pale-gray :box (:color shadow :line-width -1)))
   (mode-line-highlight        (:foreground black :background yellow))
   (mode-line-buffer-id        (:inherit 'mode-line-emphasis))
   (mode-line-emphasis         (:weight 'bold))
   (sml/charging               (:foreground pale-green :distant-foreground green))
   (sml/discharging            (:foreground pale-red :distant-foreground red))
   (sml/filename               (:inherit 'mode-line-buffer-id))
   (sml/modes                  (:inherit 'mode-line-emphasis :weight 'normal))
   (sml/modified               (:inherit 'sml/discharging :weight 'bold))
   (sml/outside-modified       (:foreground pale-yellow :background red))
   (doom-modeline-bar          (:background black))
   (doom-modeline-buffer-minor-mode (:foreground shadow))
   (doom-modeline-bar-inactive (:background shadow))
   (doom-modeline-buffer-path  (:foreground blue :weight 'bold))
   (doom-modeline-evil-normal-state (:foreground green :weight 'bold))
   (doom-modeline-evil-motion-state (:inherit 'doom-modeline-evil-normal-state :weight 'bold))
   (doom-modeline-evil-operator-state (:inherit 'doom-modeline-evil-normal-state :weight 'bold))
   (doom-modeline-evil-insert-state (:foreground red :weight 'bold))
   (doom-modeline-evil-replace-state (:inherit 'doom-modeline-evil-insert-state :weight 'bold))
   (doom-modeline-evil-visual-state (:foreground brown :weight 'bold))
   (doom-modeline-evil-emacs-state (:foreground magenta :weight 'bold))
   (doom-modeline-project-dir  (:inherit 'doom-modeline-buffer-path))
   (region                     (:background yellow))
   (secondary-selection        (:background yellow))
   (show-paren-match           (:background pale-blue))
   (show-paren-mismatch        (:foreground pale-yellow :background red))
   (trailing-whitespace        (:foreground red :background pale-red))
   (whitespace-big-indent      (:foreground pale-red :background red))
   (whitespace-empty           (:inherit 'whitespace-indentation))
   (whitespace-hspace          (:background beige :inherit 'whitespace-space))
   (whitespace-indentation     (:foreground red :background yellow))
   (whitespace-line            (:inherit 'trailing-whitespace))
   (whitespace-newline         (:foreground shadow))
   (whitespace-space-after-tab (:inherit 'whitespace-indentation))
   (whitespace-space-before-tab (:foreground pale-red :background red))
   (whitespace-space           (:foreground shadow))
   (whitespace-tab             (:foreground shadow))
   (whitespace-trailing        (:inherit 'trailing-whitespace))

   ;; generic syntax highlighting
   (font-lock-warning-face     (:foreground red))
   (font-lock-function-name-face ())
   (font-lock-variable-name-face ())
   (font-lock-keyword-face     ())
   (font-lock-comment-face     (:foreground brown :slant 'italic))
   (font-lock-type-face        (:foreground blue))
   (font-lock-constant-face    ())
   (font-lock-builtin-face     (:foreground blue))
   (font-lock-preprocessor-face (:foreground magenta))
   (font-lock-string-face      (:foreground green))
   (font-lock-doc-face         (:foreground green))

   ;; filetype syntax highlighting
   (css-selector               (:foreground blue))
   (cider-repl-prompt-face     (:foreground blue :weight 'bold))
   (clojure-keyword-face       (:foreground blue))
   (diff-added                 (:foreground green :background pale-green))
   (diff-changed               (:foreground blue :background pale-blue))
   (diff-context               ())
   (diff-file-header           (:weight 'bold :inherit 'diff-header))
   (diff-header                (:foreground black :background pale-gray))
   (diff-hunk-header           (:foreground magenta :background pale-magenta))
   (diff-refine-added          (:inherit 'diff-added :box (:line-width -1)))
   (diff-refine-changed        (:background pale-blue))
   (diff-refine-removed        (:inherit 'diff-removed :box (:line-width -1)))
   (diff-removed               (:foreground red :background pale-red))
   (js2-function-call          ())
   (ledger-font-pending-face   (:foreground magenta :slant 'italic))
   (ledger-font-posting-date-face (:foreground blue))
   (ledger-occur-xact-face     (:background beige))
   (makefile-space             (:background pale-red))
   (markdown-header-face-1     (:foreground black :background pale-gray :weight 'bold :height 1.3 :overline t))
   (markdown-header-face-2     (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (markdown-header-face-3     (:foreground green :background pale-green :weight 'bold :overline t))
   (markdown-header-face-4     (:foreground brown :weight 'bold))
   (markdown-header-face-5     (:foreground magenta :weight 'bold))
   (markdown-header-face-6     (:foreground cyan :weight 'bold :slant 'italic))
   (markdown-blockquote-face   (:foreground green))
   (markdown-inline-code-face  (:foreground blue :inherit 'fixed-pitch))
   (markdown-language-keyword-face (:foreground cyan))
   (markdown-list-face         ())
   (markdown-pre-face          (:foreground blue :inherit 'fixed-pitch))
   (markdown-reference-face    ())
   (markdown-table-face        (:foreground green :inherit 'markdown-code-face))
   (markdown-url-face          (:foreground blue))
   (message-header-name        (:foreground cyan))
   (message-header-other       ())
   (message-header-to          ())
   (message-header-subject     (:foreground black :background pale-gray :weight 'bold :overline t))
   (message-separator          (:foreground shadow))
   (message-header-cc          ())
   (org-agenda-calendar-event  (:foreground blue :background pale-cyan :weight 'bold))
   (org-agenda-calendar-sexp   (:inherit 'org-agenda-calendar-event))
   (org-agenda-current-time    (:foreground blue :underline t))
   (org-agenda-date            (:foreground blue :inherit 'org-agenda-structure))
   (org-agenda-date-today      (:foreground black :background beige :inherit 'org-agenda-date))
   (org-agenda-date-weekend    (:foreground black :inherit 'org-agenda-date))
   (org-agenda-dimmed-todo-face (:foreground shadow))
   (org-agenda-done            ())
   (org-agenda-filter-category (:inherit 'org-agenda-filter-tags))
   (org-agenda-filter-tags     (:foreground magenta))
   (org-agenda-structure       (:foreground cyan :weight 'bold :height 1.6))
   (org-checkbox               (:foreground pale-yellow :background cyan :weight 'bold :box (:line-width 1 :style 'pressed-button)))
   (org-document-title         (:foreground black :weight 'bold :height 1.8))
   (org-document-info          ())
   (org-document-info-keyword  (:foreground cyan :background pale-cyan))
   (org-drawer                 (:foreground cyan :background pale-cyan))
   (org-meta-line              (:foreground cyan :background pale-cyan))
   (org-block-begin-line       (:foreground "#55554e" :background pale-gray :underline t :box (:color "#ccccbb" :line-width -1)))
   (org-block-end-line         (:inherit 'org-block-begin-line))
   (org-block                  (:background off-bg))
   (org-level-1                (:foreground black :background pale-gray :weight 'bold :height 1.3 :overline t))
   (org-level-2                (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (org-level-3                (:foreground green :background pale-green :weight 'bold :overline t))
   (org-level-4                (:foreground brown :weight 'bold))
   (org-level-5                (:foreground magenta :weight 'bold))
   (org-level-6                (:foreground cyan :weight 'bold :slant 'italic))
   (org-level-7                (:foreground green :weight 'bold :slant 'italic))
   (org-level-8                (:foreground brown :weight 'bold :slant 'italic))
   (org-table                  (:foreground green :background pale-green))
   (org-code                   (:foreground green))
   (org-verbatim               (:foreground blue))
   (org-date                   (:foreground blue :underline t))
   (org-date-selected          (:foreground pale-yellow :background cyan :weight 'bold))
   (org-sexp-date              (:foreground blue))
   (org-scheduled              ())
   (org-scheduled-today        (:background beige :weight 'bold))
   (org-scheduled-previously   (:foreground red))
   (org-special-keyword        (:foreground cyan :background pale-cyan :weight 'bold))
   (org-tag                    (:slant 'italic :foreground shadow))
   (org-mode-line-clock        ())
   (org-mode-line-clock-overrun (:foreground pale-yellow :background red))
   (org-time-grid              (:foreground shadow))
   (org-todo                   (:foreground red :background pale-red :weight 'bold :box (:line-width -1)))
   (org-done                   (:background pale-gray :foreground shadow :weight 'bold :box (:line-width -1)))
   (org-upcoming-deadline      (:foreground red))
   (org-habit-alert-face       (:foreground yellow :background brown :box (:color brown :line-width -1)))
   (org-habit-alert-future-face (:foreground black :background yellow :box (:line-width -1) :strike-through t))
   (org-habit-clear-face       (:foreground pale-blue :background blue :box (:color blue :line-width -1)))
   (org-habit-clear-future-face (:foreground blue :background pale-cyan :box (:line-width -1)))
   (org-habit-overdue-face     (:foreground pale-red :background red :box (:color red :line-width -1)))
   (org-habit-overdue-future-face (:foreground red :background pale-red :box (:line-width -1)))
   (org-habit-ready-face       (:foreground pale-green :background green :box (:color green :line-width -1)))
   (org-habit-ready-future-face (:foreground green :background pale-green :box (:line-width -1)))
   (org-drill-hidden-cloze-face (:foreground pale-yellow :background cyan))
   (org-drill-visible-cloze-face (:foreground cyan))
   (org-drill-visible-cloze-hint-face (:foreground magenta))
   (outline-1                  (:foreground black :background pale-gray :weight 'bold :height 1.3 :overline t))
   (outline-2                  (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (outline-3                  (:foreground green :background pale-green :weight 'bold :overline t))
   (outline-4                  (:foreground brown :weight 'bold))
   (outline-5                  (:foreground magenta :weight 'bold))
   (outline-6                  (:foreground cyan :weight 'bold :slant 'italic))
   (outline-7                  (:foreground green :weight 'bold :slant 'italic))
   (outline-8                  (:foreground brown :weight 'bold :slant 'italic))
   (rainbow-delimiters-depth-1-face ())
   (rainbow-delimiters-depth-2-face (:foreground black :background pale-gray))
   (rainbow-delimiters-depth-3-face (:foreground blue :background pale-cyan))
   (rainbow-delimiters-depth-4-face (:foreground green :background pale-green))
   (rainbow-delimiters-depth-5-face (:foreground brown :background beige))
   (rainbow-delimiters-depth-6-face (:foreground magenta :background pale-magenta))
   (rainbow-delimiters-depth-7-face (:foreground cyan :background pale-cyan))
   (rainbow-delimiters-depth-8-face (:foreground green))
   (rainbow-delimiters-depth-9-face (:foreground brown))
   (rainbow-delimiters-mismatched-face (:foreground red :background pale-red :weight 'bold))
   (rainbow-delimiters-unmatched-face (:foreground red :background pale-red :weight 'bold))
   (rst-adornment              (:foreground cyan))
   (rst-directive              (:foreground magenta))
   (rst-literal                (:foreground green))
   (rst-reference              (:foreground blue))
   (rst-level-1                (:foreground black :background pale-gray :weight 'bold :height 1.3 :overline t))
   (rst-level-2                (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (rst-level-3                (:foreground green :background pale-green :weight 'bold :overline t))
   (rst-level-4                (:foreground brown :weight 'bold))
   (rst-level-5                (:foreground magenta :weight 'bold))
   (rst-level-6                (:foreground cyan :weight 'bold :slant 'italic))
   (sh-heredoc                 (:foreground green :inherit 'font-lock-string-face))
   (sh-quoted-exec             ())
   (vimrc-number               ())
   (web-mode-html-tag-face     (:foreground cyan))
   (web-mode-html-attr-name-face ())

   ;; package interface elements
   (calendar-month-header      (:weight 'bold))
   (calendar-today             (:background beige :weight 'bold :box (:color brown :line-width -1)))
   (calendar-weekday-header    (:foreground blue :weight 'bold))
   (calendar-weekend-header    (:weight 'bold))
   (diary                      (:foreground magenta))
   (holiday                    (:background pale-red :box (:color red :line-width -1)))
   (bui-hint-key               (:foreground pale-magenta :distant-foreground magenta))
   (bui-info-param-title       (:weight 'bold))
   (company-scrollbar-bg       (:inherit 'company-tooltip))
   (company-scrollbar-fg       (:background cyan))
   (company-tooltip            (:background pale-cyan))
   (company-tooltip-common     (:weight 'bold))
   (company-tooltip-annotation (:foreground cyan))
   (company-tooltip-annotation-selection (:foreground pale-yellow))
   (company-tooltip-selection  (:foreground pale-yellow :background cyan))
   (custom-button-pressed-unraised (:foreground magenta :underline t))
   (custom-changed             (:inverse-video t :inherit 'custom-set))
   (custom-comment             (:foreground black :background pale-gray))
   (custom-comment-tag         (:foreground blue))
   (custom-group-tag           (:foreground blue :weight 'bold :height 1.2 :inherit 'variable-pitch))
   (custom-group-tag-1         (:foreground red :inherit 'custom-group-tag))
   (custom-invalid             (:foreground red :background pale-red :weight 'bold))
   (custom-modified            (:inherit 'custom-changed))
   (custom-rogue               (:foreground pale-red :background black))
   (custom-set                 (:foreground blue))
   (custom-state               (:foreground green))
   (custom-themed              (:inherit 'custom-changed))
   (custom-variable-tag        (:foreground blue :weight 'bold))
   (comint-highlight-input     (:foreground blue :weight 'bold))
   (comint-highlight-prompt    (:foreground blue :weight 'bold))
   (debbugs-gnu-done           (:foreground shadow))
   (debbugs-gnu-forwarded      (:foreground brown))
   (debbugs-gnu-handled        (:foreground green))
   (debbugs-gnu-new            (:foreground red :weight 'bold))
   (debbugs-gnu-pending        (:foreground blue))
   (debbugs-gnu-stale-1        (:foreground brown :slant 'italic))
   (debbugs-gnu-stale-2        (:inherit 'debbugs-gnu-stale-1))
   (debbugs-gnu-stale-3        (:inherit 'debbugs-gnu-stale-1))
   (debbugs-gnu-stale-4        (:inherit 'debbugs-gnu-stale-1))
   (debbugs-gnu-stale-5        (:inherit 'debbugs-gnu-stale-1))
   (debbugs-gnu-tagged         (:foreground red))
   (dired-directory            (:foreground blue :weight 'bold))
   (dired-header               (:foreground blue :weight 'bold))
   (dired-ignored              (:foreground brown))
   (dired-symlink              (:foreground cyan :weight 'bold))
   (diredfl-autofile-name      (:inherit 'diredfl-file-name))
   (diredfl-compressed-file-name (:inherit 'diredfl-file-name))
   (diredfl-compressed-file-suffix (:inherit 'diredfl-file-suffix))
   (diredfl-date-time          (:foreground blue))
   (diredfl-deletion           (:foreground red))
   (diredfl-deletion-file-name (:inherit 'diredfl-deletion))
   (diredfl-dir-heading        (:inherit 'diredfl-dir-name))
   (diredfl-dir-name           (:inherit 'dired-directory))
   (diredfl-dir-priv           (:inherit 'diredfl-no-priv))
   (diredfl-exec-priv          (:inherit 'diredfl-no-priv))
   (diredfl-executable-tag     (:foreground green))
   (diredfl-file-name          ())
   (diredfl-file-suffix        (:inherit 'diredfl-file-name))
   (diredfl-flag-mark          (:foreground magenta))
   (diredfl-flag-mark-line     (:inherit 'diredfl-flag-mark))
   (diredfl-ignored-file-name  (:inherit 'dired-ignored))
   (diredfl-link-priv          (:inherit 'diredfl-no-priv))
   (diredfl-no-priv            ())
   (diredfl-number             (:foreground cyan))
   (diredfl-other-priv         (:inherit 'diredfl-no-priv))
   (diredfl-rare-priv          (:inherit 'diredfl-no-priv))
   (diredfl-read-priv          (:inherit 'diredfl-no-priv))
   (diredfl-symlink            (:inherit 'dired-symlink))
   (diredfl-tagged-autofile-name (:inherit 'diredfl-file-name))
   (diredfl-write-priv         (:inherit 'diredfl-no-priv))
   (eldoc-highlight-function-argument (:foreground blue :weight 'bold :underline t))
   (elfeed-search-date-face    (:foreground blue))
   (elfeed-search-feed-face    (:foreground brown))
   (elfeed-search-tag-face     (:foreground green))
   (emms-browser-album-face    (:foreground green :background pale-green :weight 'bold :overline t))
   (emms-browser-artist-face   (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (emms-browser-composer-face (:inherit 'emms-browser-artist-face))
   (emms-browser-performer-face (:inherit 'emms-browser-artist-face))
   (emms-browser-track-face    ())
   (emms-browser-year/genre-face (:foreground black :background pale-gray :weight 'bold :height 1.2 :overline t))
   (emms-metaplaylist-mode-current-face (:foreground pale-red :background red))
   (emms-metaplaylist-mode-face (:foreground red))
   (emms-playlist-selected-face (:foreground pale-yellow :background blue :weight 'bold))
   (emms-playlist-track-face   ())
   (emms-stream-name-face      (:weight 'bold))
   (emms-stream-url-face       (:foreground blue :underline t))
   (eshell-ls-archive          ())
   (eshell-ls-backup           (:foreground brown))
   (eshell-ls-clutter          (:foreground brown))
   (eshell-ls-directory        (:foreground blue :weight 'bold))
   (eshell-ls-executable       (:foreground green :weight 'bold))
   (eshell-ls-missing          (:foreground red :strike-through t :slant 'italic))
   (eshell-ls-product          ())
   (eshell-ls-readonly         ())
   (eshell-ls-special          (:foreground magenta))
   (eshell-ls-symlink          (:foreground cyan :weight 'bold))
   (eshell-ls-unreadable       (:foreground red))
   (eshell-prompt              (:foreground blue :weight 'bold))
   (evil-ex-info               (:foreground red :slant 'italic))
   (evil-ex-substitute-replacement (:foreground red :underline t))
   (evil-mc-cursor-default-face (:foreground pale-yellow :background blue))
   (evil-mc-cursor-bar-face    (:background blue :height 1))
   (evil-mc-cursor-hbar-face   (:underline (:color blue :style 'line)))
   (eww-invalid-certificate    (:foreground red :inherit 'eww-valid-certificate))
   (eww-valid-certificate      (:weight 'bold))
   (flycheck-fringe-error      (:foreground red :background pale-red))
   (flycheck-fringe-info       (:foreground green :background pale-green))
   (flycheck-fringe-warning    (:foreground red :background pale-red))
   (geiser-font-lock-autodoc-current-arg (:foreground blue :weight 'bold :underline t))
   (geiser-font-lock-autodoc-identifier ())
   (geiser-font-lock-doc-link  (:inherit 'link))
   (geiser-font-lock-error-link (:inherit 'link))
   (geiser-font-lock-repl-input (:inherit 'geiser-font-lock-repl-prompt))
   (geiser-font-lock-repl-output ())
   (geiser-font-lock-repl-prompt (:foreground blue :weight 'bold))
   (geiser-font-lock-xref-link (:inherit 'link))
   (guix-build-log-phase-end   (:foreground green))
   (guix-build-log-phase-start (:foreground green :weight 'bold))
   (guix-derivation-drv-file-name (:foreground cyan :inherit 'guix-derivation-file-name))
   (guix-operation-option-key  (:inherit 'bui-hint-key))
   (guix-package-info-description ())
   (guix-package-info-future   (:foreground magenta :weight 'bold))
   (guix-package-info-license  ())
   (guix-package-info-source   (:inherit 'link))
   (guix-true                  (:foreground green :weight 'bold))
   (helm-M-x-key               (:foreground magenta))
   (helm-buffer-archive        (:foreground blue))
   (helm-buffer-directory      (:foreground blue :weight 'bold))
   (helm-buffer-file           ())
   (helm-buffer-modified       (:inherit 'font-lock-comment-face))
   (helm-buffer-not-saved      (:foreground red))
   (helm-buffer-process        (:foreground blue))
   (helm-buffer-saved-out      (:foreground red :background pale-red :weight 'bold :slant 'italic))
   (helm-buffer-size           (:foreground shadow))
   (helm-candidate-number      (:foreground black :background yellow))
   (helm-etags-file            (:foreground brown))
   (helm-delete-async-message  (:foreground yellow :distant-foreground brown))
   (helm-ff-denied             (:foreground red))
   (helm-ff-directory          (:foreground blue :weight 'bold))
   (helm-ff-dotted-directory   (:inherit 'helm-ff-directory))
   (helm-ff-dotted-symlink-directory (:inherit 'helm-ff-symlink))
   (helm-ff-executable         (:foreground green))
   (helm-ff-file               ())
   (helm-ff-invalid-symlink    (:foreground red :strike-through t :slant 'italic))
   (helm-ff-pipe               (:foreground magenta))
   (helm-ff-prefix             (:background yellow))
   (helm-ff-socket             (:foreground magenta))
   (helm-ff-suid               (:foreground green :background pale-green :weight 'bold))
   (helm-ff-symlink            (:foreground cyan :weight 'bold))
   (helm-ff-truename           ())
   (helm-grep-file             (:inherit 'compilation-info))
   (helm-grep-finish           (:foreground green))
   (helm-grep-lineno           (:inherit 'compilation-line-number))
   (helm-grep-match            (:background pale-magenta :weight 'bold))
   (helm-history-remote        (:foreground magenta))
   (helm-header-line-left-margin (:background yellow))
   (helm-match                 (:background pale-magenta))
   (helm-prefarg               (:foreground red))
   (helm-moccur-buffer         (:foreground cyan :underline t))
   (helm-selection             (:background pale-blue))
   (helm-source-header         (:foreground black :background pale-gray :weight 'bold :height 1.3 :inherit 'variable-pitch))
   (helm-visible-mark          (:foreground pale-yellow :background red))
   (hi-black-b                 (:foreground black :weight 'bold))
   (hi-black-hb                (:foreground black :weight 'bold :height 1.3 :inherit 'variable-pitch))
   (hi-blue                    (:background pale-blue :box (:color blue :line-width -1)))
   (hi-blue-b                  (:foreground blue :weight 'bold))
   (hi-green                   (:background pale-green :box (:color green :line-width -1)))
   (hi-green-b                 (:foreground green :weight 'bold))
   (hi-pink                    (:background pale-red :box (:color red :line-width -1)))
   (hi-red-b                   (:foreground red :weight 'bold))
   (hi-yellow                  (:background beige :box (:color brown :line-width -1)))
   (ido-indicator              (:foreground yellow :background red :weight 'bold))
   (ido-only-match             (:foreground green))
   (ido-subdir                 (:foreground blue :weight 'bold))
   (ido-virtual                (:foreground shadow))
   (info-title-1               (:foreground black :background pale-gray :weight 'bold :height 1.3 :overline t))
   (info-title-2               (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (info-title-3               (:foreground green :background pale-green :weight 'bold :overline t))
   (info-title-4               (:foreground brown :weight 'bold))
   (info-header-node           (:foreground magenta :underline t))
   (info-menu-header           (:foreground blue :background pale-cyan :weight 'bold :overline t))
   (info-menu-star             ())
   (info-node                  (:foreground blue :underline t))
   (ivy-current-match          (:foreground pale-yellow :background blue :weight 'bold))
   (ivy-minibuffer-match-face-1 (:background pale-gray))
   (ivy-minibuffer-match-face-2 (:background pale-magenta :weight 'bold))
   (ivy-minibuffer-match-face-3 (:background pale-blue :weight 'bold))
   (ivy-minibuffer-match-face-4 (:background yellow :weight 'bold))
   (ivy-modified-buffer        (:inherit 'font-lock-comment-face))
   (ivy-modified-outside-buffer (:foreground red :background pale-red :weight 'bold :slant 'italic))
   (ivy-org                    (:foreground green))
   (ivy-remote                 (:foreground magenta))
   (ivy-virtual                (:foreground shadow))
   (ivy-confirm-face           (:foreground green))
   (ivy-match-required-face    (:foreground red))
   (ivy-cursor                 (:foreground pale-yellow :background black :weight 'bold))
   (counsel-application-name   (:foreground green))
   (counsel-key-binding        (:foreground magenta))
   (git-commit-comment-file    ())
   (git-gutter:added           (:foreground green :weight 'bold))
   (git-gutter:deleted         (:foreground red :weight 'bold))
   (git-gutter:modified        (:foreground magenta :weight 'bold))
   (git-gutter:separator       (:foreground cyan :weight 'bold))
   (git-gutter:unchanged       (:foreground yellow))
   (magit-bisect-bad           (:foreground red))
   (magit-bisect-good          (:foreground green))
   (magit-bisect-skip          (:foreground cyan))
   (magit-blame-date           (:foreground blue))
   (magit-blame-highlight      (:foreground black :background pale-gray))
   (magit-blame-name           (:foreground magenta))
   (magit-branch-local         (:foreground blue))
   (magit-branch-remote        (:foreground green))
   (magit-cherry-equivalent    (:foreground magenta))
   (magit-cherry-unmatched     (:foreground cyan))
   (magit-diff-added           (:foreground green :background pale-green))
   (magit-diff-added-highlight (:inherit 'magit-diff-added))
   (magit-diff-base            (:foreground brown :background beige))
   (magit-diff-base-highlight  (:inherit 'magit-diff-base))
   (magit-diff-context         (:foreground black :background pale-gray))
   (magit-diff-context-highlight (:inherit 'magit-diff-context))
   (magit-diff-file-heading-selection (:inherit 'magit-diff-file-heading-highlight))
   (magit-diff-hunk-heading    (:foreground cyan :background pale-cyan :box (:line-width -1)))
   (magit-diff-hunk-heading-highlight (:foreground magenta :background pale-magenta :box (:line-width -1)))
   (magit-diff-hunk-heading-selection (:inherit 'magit-diff-hunk-heading-highlight))
   (magit-diff-lines-heading   (:foreground pale-magenta :background magenta :weight 'bold))
   (magit-diff-removed         (:foreground red :background pale-red))
   (magit-diff-removed-highlight (:inherit 'magit-diff-removed))
   (magit-diffstat-added       (:foreground green))
   (magit-diffstat-removed     (:foreground red))
   (magit-dimmed               (:foreground shadow))
   (magit-hash                 (:foreground cyan))
   (magit-header-line          (:weight 'bold))
   (magit-keyword              (:foreground blue))
   (magit-log-author           (:foreground magenta))
   (magit-log-date             (:foreground blue))
   (magit-log-graph            (:foreground cyan))
   (magit-mode-line-process-error (:foreground pale-red :distant-foreground red :weight 'bold))
   (magit-popup-argument       (:foreground blue))
   (magit-popup-key            (:foreground magenta))
   (magit-process-ng           (:foreground red :weight 'bold))
   (magit-process-ok           (:foreground green :weight 'bold))
   (magit-reflog-amend         (:foreground magenta))
   (magit-reflog-checkout      (:foreground blue))
   (magit-reflog-cherry-pick   (:inherit 'magit-reflog-commit))
   (magit-reflog-commit        (:foreground green))
   (magit-reflog-merge         (:inherit 'magit-reflog-commit))
   (magit-reflog-other         (:foreground cyan))
   (magit-reflog-rebase        (:foreground magenta))
   (magit-reflog-remote        (:foreground cyan))
   (magit-reflog-reset         (:foreground red))
   (magit-refname              (:foreground cyan))
   (magit-section-heading      (:foreground brown :weight 'bold))
   (magit-section-heading-selection (:foreground brown))
   (magit-section-highlight    (:background pale-gray))
   (magit-sequence-drop        (:foreground red))
   (magit-sequence-head        (:foreground blue))
   (magit-sequence-part        (:foreground brown))
   (magit-sequence-stop        (:foreground green))
   (magit-signature-bad        (:foreground red :background pale-red :weight 'bold))
   (magit-signature-error      (:foreground red))
   (magit-signature-expired    (:foreground brown))
   (magit-signature-expired-key (:inherit 'magit-signature-expired))
   (magit-signature-good       (:foreground green))
   (magit-signature-revoked    (:foreground magenta))
   (magit-signature-untrusted  (:foreground cyan))
   (magit-tag                  (:foreground brown))
   (mu4e-cited-1-face          (:foreground blue :slant 'italic))
   (mu4e-cited-2-face          (:foreground green :slant 'italic))
   (mu4e-cited-3-face          (:foreground brown :slant 'italic))
   (mu4e-cited-4-face          (:foreground blue :slant 'italic))
   (mu4e-cited-5-face          (:foreground green :slant 'italic))
   (mu4e-cited-6-face          (:foreground brown :slant 'italic))
   (mu4e-cited-7-face          (:foreground magenta :slant 'italic))
   (mu4e-conversation-header   (:foreground brown :background beige :box (:line-width -1)))
   (mu4e-conversation-sender-1 (:background pale-gray))
   (mu4e-conversation-sender-2 (:background pale-cyan))
   (mu4e-conversation-sender-3 (:background pale-green))
   (mu4e-conversation-sender-4 (:background beige))
   (mu4e-conversation-sender-5 (:background pale-red))
   (mu4e-conversation-sender-6 (:foreground blue))
   (mu4e-conversation-sender-7 (:foreground green))
   (mu4e-conversation-sender-8 (:foreground magenta))
   (mu4e-conversation-sender-me ())
   (mu4e-header-value-face     ())
   (mu4e-special-header-value-face ())
   (mu4e-modeline-face         (:foreground pale-green :weight 'bold :distant-foreground green))
   (pass-mode-directory-face   (:foreground blue :weight 'bold))
   (solaire-default-face       (:background off-bg))
   (solaire-fringe-face        (:foreground black :background pale-gray))
   (solaire-hl-line-face       (:background beige))
   (swiper-line-face           (:foreground pale-yellow :background blue :weight 'bold))
   (swiper-match-face-1        ())
   (swiper-match-face-2        (:foreground black :background pale-magenta))
   (swiper-match-face-3        (:foreground black :background pale-blue))
   (swiper-match-face-4        (:foreground black :background yellow))
   (swiper-background-match-face-1 ())
   (swiper-background-match-face-2 (:background pale-magenta))
   (swiper-background-match-face-3 (:background pale-blue))
   (swiper-background-match-face-4 (:background yellow))
   (term-color-black           (:foreground black :background pale-gray))
   (term-color-red             (:foreground red :background pale-red))
   (term-color-green           (:foreground green :background pale-green))
   (term-color-yellow          (:foreground brown :background yellow))
   (term-color-blue            (:foreground blue :background pale-blue))
   (term-color-magenta         (:foreground magenta :background pale-magenta))
   (term-color-cyan            (:foreground cyan :background pale-cyan))
   (term-color-white           (:foreground beige :background pale-yellow))
   (transient-argument         (:foreground blue))
   (transient-disabled-suffix  (:background pale-red :box (:color red :line-width -1)))
   (transient-enabled-suffix   (:background pale-green :box (:color green :line-width -1)))
   (transient-key              (:foreground magenta))
   (transient-separator        (:foreground shadow :inverse-video t))
   (undo-tree-visualizer-active-face (:weight 'bold))
   (undo-tree-visualizer-current-face (:foreground red))
   (undo-tree-visualizer-default-face (:foreground shadow))
   (undo-tree-visualizer-register-face (:foreground magenta))
   (undo-tree-visualizer-unmodified-face (:foreground cyan))
   (which-key-docstring-face   (:inherit 'font-lock-doc-face))
   (which-key-group-description-face (:foreground blue))
   (which-key-key-face         (:foreground magenta))
   (which-key-note-face        (:inherit 'font-lock-comment-face))
   (which-key-separator-face   ()))

  (custom-theme-set-variables 'parchment
   ;; shell-mode colors
   `(ansi-color-names-vector
     [,black ,red ,green ,brown ,blue ,magenta ,cyan ,beige])
   `(org-drill-done-count-color ,brown)
   `(org-drill-failed-count-color ,red)
   `(org-drill-mature-count-color ,green)
   `(org-drill-new-count-color ,blue))

  (defun parchment-modify-tty-colors ()
    (tty-color-define "black"          0 (tty-color-standard-values black))
    (tty-color-define "red"            1 (tty-color-standard-values red))
    (tty-color-define "green"          2 (tty-color-standard-values green))
    (tty-color-define "yellow"         3 (tty-color-standard-values brown))
    (tty-color-define "blue"           4 (tty-color-standard-values blue))
    (tty-color-define "magenta"        5 (tty-color-standard-values magenta))
    (tty-color-define "cyan"           6 (tty-color-standard-values cyan))
    (tty-color-define "white"          7 (tty-color-standard-values beige))
    (tty-color-define "brightblack"    8 (tty-color-standard-values pale-gray))
    (tty-color-define "brightred"      9 (tty-color-standard-values pale-red))
    (tty-color-define "brightgreen"   10 (tty-color-standard-values pale-green))
    (tty-color-define "brightyellow"  11 (tty-color-standard-values yellow))
    (tty-color-define "brightblue"    12 (tty-color-standard-values pale-blue))
    (tty-color-define "brightmagenta" 13 (tty-color-standard-values pale-magenta))
    (tty-color-define "brightcyan"    14 (tty-color-standard-values pale-cyan))
    (tty-color-define "brightwhite"   15 (tty-color-standard-values pale-yellow)))

  (defun parchment-modify-sgml-tags ()
    "Change color of HTML tags (to be called in a hook)."
    (when (member 'parchment custom-enabled-themes)
      (face-remap-add-relative 'font-lock-function-name-face
                               `(:foreground ,cyan))))

  (defun parchment-modify-shell-messages ()
    "Change color of shell messages (to be called in a hook)."
    (when (member 'parchment custom-enabled-themes)
      (face-remap-add-relative 'font-lock-string-face
                               `())))

  (when parchment-want-modify-tty-colors
    (add-hook 'tty-setup-hook #'parchment-modify-tty-colors))

  (when parchment-add-mode-hooks
    (add-hook 'sgml-mode-hook 'parchment-modify-sgml-tags)
    (add-hook 'shell-mode-hook 'parchment-modify-shell-messages)))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'parchment)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; parchment-theme.el ends here
