require("config.lazy")
require("config.vim_options")
require("config.neovide")

-- Add LSPs inside here to enable them
vim.lsp.enable({
	'clangd',
})
