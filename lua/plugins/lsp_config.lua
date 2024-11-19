return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{

		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" , "clangd" }
			})
		end
	},

	{
		"neovim/nvim-lspconfig",
		keys = {
			{ "K", vim.lsp.buf.hover, desc = "Symbol Information" },
			{ "gd", vim.lsp.buf.definition, desc = "go to Definition" },
			{ "<leader>ca", vim.lsp.buf.code_action, mode = { "n" , "v" }, desc = "Code Action" }
		},
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
				lspconfig.lua_ls.setup({
					capabilities = capabilities
				})
				lspconfig.clangd.setup({
					capabilities = capabilities,
					 cmd = {
					 	"clangd",
					 	"--enable-config",
					 },
				})
		end
	},
}
