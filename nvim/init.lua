-- require("options")
-- require("keymaps")
-- require("lazy-config")

if vim.g.vscode then
	vim.cmd([[source $HOME/github/xmacs/nvim/settings.vim]])
	-- Optional plugin
	vim.cmd([[source $HOME/github/xmacs/nvim/easymotion-config.vim]])
end

require("plugins")
