; emacs - basic settings
; ubuntu server v21.10

; package-archives
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")
        ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

; ----
; language
; ----
;; set language as Japanese
(set-language-environment 'Japanese)
;; coding UTF8
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
; ----------------
; key bind
; ----------------
;; C-h
(global-set-key "\C-h" 'delete-backward-char)
;; help
(global-set-key "\C-c\C-h" 'help-command)
;; comment out
(global-set-key "\C-c;" 'comment-dwim)
;; window operation
(global-set-key "\C-t" 'other-window)
; ----
; preferences
; ----
; 括弧を自動で補完する
(electric-pair-mode 1)
;; tabにスペース４つを利用
(setq-default tab-width 4 indent-tabs-mode nil)
;; デフォルトの起動時のメッセージを表示しない
(setq inhibit-startup-message t)
;; 列の番号
(column-number-mode t)
;; 行番号の表示
(global-linum-mode t)
;; 1行ごとの改ページ
(setq scroll-conservatively 1)
;; 対応する括弧を光らせる
(show-paren-mode 1)
;; メニューバーの非表示
(menu-bar-mode -1)
;; ツールバーの非表示
(tool-bar-mode -1)

; 行番号の横に半角空白
(require 'linum)
(global-linum-mode t)
(setq linum-format "%3d ")
; 行番号の配色
(set-face-attribute 'linum nil
                    :foreground "white")

; font
(add-to-list 'default-frame-alist '(font . "MigMix 1M"))

; mode-line
(nano-modeline-mode 1)
(powerline-nano-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(nano-modeline powerline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "green")))))
