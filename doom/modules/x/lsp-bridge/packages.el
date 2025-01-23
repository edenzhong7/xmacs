;; -*- no-byte-compile: t; -*-
;;; h-cheung/lsp-bridge/packages.el

(package! lsp-bridge
  :recipe (:host github
           :repo "manateelazycat/lsp-bridge"
	   :files ("*")))

(package! lsp-bridge
  :recipe (:host github
           :repo "manateelazycat/lsp-bridge"
           :branch "master"
           :files ("*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
           ;; do not perform byte compilation or native compilation for lsp-bridge
           :build (:not compile)))

(package! markdown-mode)
(package! yasnippet)
(package! dape
  :recipe (:host github
           :repo "svaante/dape"
           :branch "master"
           :files ("*.el")))
;;(package! lsp-mode :disable t :ignore t)
;; (package! dap-mode :disable t :ignore t)
;;(package! company :disable t :ignore t)
