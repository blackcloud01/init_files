;;; XEmacs backwards compatibility file
;;(setq user-init-file
 ;;     (expand-file-name "init.el"
;;			(expand-file-name ".xemacs" "~")))
;;(setq custom-file
;;      (expand-file-name "custom.el"
;;			(expand-file-name ".xemacs" "~")))

;;(load-file user-init-file)
;;(load-file custom-file)


;;(require 'pc-select)
;;(pc-selection-mode)

;;   for more convenient history
;;   access you might want to add something like the following to *the beggining*
;;   of your ``.emacs`` (if you want behavior that's more similar to stand-alone
;;   ipython, you can change ``meta p`` etc. for ``control p``)::

  (require 'comint)
         (define-key comint-mode-map [(control p)]
           'comint-previous-matching-input-from-input)
         (define-key comint-mode-map [(control n)]
           'comint-next-matching-input-from-input)
         (define-key comint-mode-map [(control meta n)]
            'comint-next-input)
         (define-key comint-mode-map [(control meta p)]
            'comint-previous-input)

;; define install directory for python related files like 
;; python-mode.el, ipython.el etc

(setq py-install-directory "/home/jagadish/.emacs.d/")

;; Add py-isntall-directory to xemacs load path
(add-to-list 'load-path py-install-directory)


;; Load/Set ipython and arguments

;;(setq ipython-command "/opt/TWWfsw/bin/ipython2.7")
;;(setq py-python-command-args '( "--pylab" "--colors" "Linux"))

(setq ipython-command "/export/home/GoldFinch/anaconda2/bin/ipython")
(setq py-python-command-args '( "--simple-prompt" "--pylab" "--colors=Linux"))
;; --simple_prompt argument makes sure ipython prompt works with emacs

;;(require 'ipython)


;; Enable mouse wheel scrolling
(autoload 'mwheel-install "mwheel" "Enable mouse wheel support.")
(mwheel-install)

;; ######## Tabs for modules #######
(require 'tabbar)
(tabbar-mode 1)
(define-key global-map [(alt j)] 'tabbar-backward)
(define-key global-map [(alt k)] 'tabbar-forward)
;; ##################################



;; ############## Load ESS/R ##############
;;(setq ess-install-directory "/home/srquant/.emacs.d/ess-14.09/lisp") 
;;(add-to-list 'load-path ess-install-directory)
;;(load "ess-site")
;;(require 'ess-site)
;;(autoload 'R-mode "-site.el" "ESS" t)
;;(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
;;(setq inferior-R-program-name "/opt/TWWfsw/bin/R")
;;R stuff
;;(setq ess-eval-visibly-p nil)
;;(setq ess-ask-for-ess-directory nil)
;;(require 'ess-eldoc)
;; ###################################


 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "ASCII")
 '(custom-enabled-themes (quote (misterioso)))
 '(default-input-method "latin-1-prefix")
 '(delete-selection-mode nil)
 '(font-use-system-font t)
 '(global-font-lock-mode t nil (font-lock))
 '(mark-even-if-inactive t)
 '(paren-mode (quote sexp) nil (paren))
 '(query-user-mail-address nil)
 '(scroll-bar-mode (quote right))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t nil (paren))
 '(smtpmail-smtp-server "mailhost.trdlnk.com")
 '(smtpmail-smtp-service 25)
 '(transient-mark-mode 1)
 '(truncate-lines nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "gainsboro" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 60 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(cursor ((t (:background "red"))))
 '(custom-documentation-face ((t nil)) t)
 '(display-time-time-balloon-face ((t (:foreground "red"))) t)
 '(font-lock-builtin-face ((((class color) (background dark)) (:foreground "orange"))))
 '(font-lock-comment-face ((t (:foreground "deep sky blue"))))
 '(font-lock-function-name-face ((t (:foreground "green" :slant italic :weight extra-bold :height 1.5))))
 '(font-lock-keyword-face ((((class color) (background dark)) (:foreground "#ff8000"))))
 '(font-lock-string-face ((t (:foreground "chartreuse"))))
 '(font-lock-type-face ((t (:foreground "magenta" :slant italic :weight ultra-bold :height 1.0))))
 '(font-lock-variable-name-face ((((class color) (background dark)) (:foreground "orange"))))
 '(list-mode-item-selected ((t (:foreground "black" :background "gray68"))) t)
 '(mode-line-buffer-id ((t (:foreground "#FFFF47" :background "#262523"))))
 '(paren-blink-off ((t (:foreground "#262523" :background "blue"))) t)
 '(paren-match ((t (:foreground "black" :background "#CC9900"))) t)
 '(primary-selection ((t (:foreground "black" :background "lightgreen"))) t)
 '(py-builtins-face ((t (:foreground "magenta"))) t)
 '(py-pseudo-keyword-face ((t (:foreground "#99CC00"))) t)
 '(region ((t (:background "yellow" :foreground "black"))))
 '(show-paren-mismatch ((t (:background "red" :foreground "white"))))
 '(zmacs-region ((t (:foreground "black" :background "lightgreen"))) t))



(setq minibuffer-max-depth nil)
(global-set-key (kbd "C-<tab>") 'next-multiframe-window)
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally)

(setq-default line-spacing 5)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(require 'auto-complete)
(global-auto-complete-mode t)


;; indent guide lines
(require 'indent-guide)

(setq indent-guide-char "|")
(set-face-foreground 'indent-guide-face "magenta")
(indent-guide-global-mode)


;; format for linum mode
(setq linum-format "%4d ")
