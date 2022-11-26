;;; lang/+go.el -*- lexical-binding: t; -*-
;; Go settings

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer -100 t)
  (add-hook 'before-save-hook #'lsp-organize-imports -99 t))

(defun +eglot-organize-imports() (call-interactively 'eglot-code-action-organize-imports))

(defun eglot-go-install-save-hooks ()
  (add-hook 'before-save-hook #'gofmt-before-save -100 t)
  (add-hook 'before-save-hook #'eglot-format-buffer -90 t)
  (add-hook 'before-save-hook #'+eglot-organize-imports -80 t))


(if (featurep! :tools lsp +eglot)
    (progn 
      (after! go-mode
        (add-hook 'go-mode-hook #'eglot-go-install-save-hooks)))
  (after! go-mode
    (add-hook 'go-mode-hook 'lsp-deferred)
    (add-hook 'go-mode-hook #'lsp-go-install-save-hooks)))
