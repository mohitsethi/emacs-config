;;; key-bindings.el --- I need these key combos
;;; Author: Vedang Manerikar
;;; Created on: 08 Jan 2012
;;; Time-stamp: "2013-01-27 15:58:11 vedang"
;;; Copyright (c) 2012 Vedang Manerikar <vedang.manerikar@gmail.com>

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the Do What The Fuck You Want to
;; Public License, Version 2, which is included with this distribution.
;; See the file LICENSE.txt

;;; Code:


(global-set-key (kbd "M-j") 'pop-to-mark-command)
(global-set-key (kbd "RET") 'reindent-then-newline-and-indent)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x n r") 'narrow-to-region)
(global-set-key (kbd "C-x \\") 'align-regexp)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "<f5>") 'revert-buffer)
(global-set-key (kbd "C-x m") 'eshell)
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))
(global-set-key (kbd "C-h a") 'apropos)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-c g") 'writegood-mode)
(define-key global-map [(control f3)]  'cscope-set-initial-directory)
(global-set-key (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
(global-set-key (kbd "C-S-t") 'transpose-sexps)
(global-set-key (kbd "C-c o") 'turn-on-paredit-nonlisp)

;; M-q is eaten inside VirtualBox on Mac.
;; Re-mapping some important functions which depend on M-q
(global-set-key (kbd "C-c q") 'fill-paragraph)
(global-set-key (kbd "C-s-q") 'prog-indent-sexp)


;;; Window switching. (C-x o goes to the next window)
;;; Emacs-starter-kit
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda ()
                                  (interactive)
                                  (other-window 2))) ;; forward two


;;; Keybindings from Steve Yegge's Effective Emacs
(global-set-key (kbd "C-x C-m") 'execute-extended-command) ;; faster M-x
(global-set-key (kbd "C-c C-m") 'execute-extended-command)


;; Local keybindings
(eval-after-load 'paredit
  ;; I don't need open-line and this is much easier than actually
  ;; typing Shift+9
  '(define-key paredit-mode-map (kbd "C-o") 'paredit-open-round))


(eval-after-load "ido-mode-config"
  '(progn
     (global-set-key (kbd "M-x") 'super-meta-x)
     (global-set-key (kbd "s-x") 'super-meta-x)))


;; bindings for revive mode
(define-key ctl-x-map "S" 'emacs-save-layout)
(define-key ctl-x-map "F" 'emacs-load-layout)


;; Custom 'apropos' key bindings
;; http://www.masteringemacs.org/articles/2011/08/04/full-text-searching-info-mode-apropos/#comment-1409
(global-set-key (kbd "C-h a") 'Apropos-Prefix)
(define-prefix-command 'Apropos-Prefix nil "Apropos (a,d,f,i,l,v,C-v)")
(define-key Apropos-Prefix (kbd "a")   'apropos)
(define-key Apropos-Prefix (kbd "d")   'apropos-documentation)
(define-key Apropos-Prefix (kbd "f")   'apropos-command)
(define-key Apropos-Prefix (kbd "c")   'apropos-command)
(define-key Apropos-Prefix (kbd "i")   'info-apropos)
(define-key Apropos-Prefix (kbd "l")   'apropos-library)
(define-key Apropos-Prefix (kbd "v")   'apropos-variable)
(define-key Apropos-Prefix (kbd "C-v") 'apropos-value)

;; Aliases for common functions
(defalias 'qrr 'query-replace-regexp)
(defalias 'rvt 'revert-buffer)
(defalias 'dtw 'delete-trailing-whitespace)


(provide 'key-bindings)
