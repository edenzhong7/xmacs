;;; h-cheung/lsp-bridge/config.el -*- lexical-binding: t; -*-

(use-package! lsp-bridge
  :config
  (map! :map acm-mode-map
        [tab]           #'acm-select-next
        [backtab]       #'acm-select-prev)
  (map! :map doom-leader-code-map
        :desc "LSP Rename"
        "r"             #'lsp-bridge-rename
        :desc "LSP Find declaration"
        "j"             #'lsp-bridge-find-def)
  (require 'yasnippet)
  (yas-global-mode 1)
  (setq lsp-bridge-enable-log nil)
  (setq acm-enable-codeium t)
  (global-lsp-bridge-mode))

(use-package! dape
  :config
  (setq dap-auto-configure-features '(sessions locals controls tooltip))  ;; 启用调试控制
  (setq dap-debug-template-options '( :cwd nil ))  ;; 设置工作目录
  )
