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
				ensure_installed = { "lua_ls", "clangd" }
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
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({
				cmd = {
					"clangd",
					"--query-driver=C:/Users/Robbie/AppData/Local/nvim-data/mason/packages/clangd/clangd_19.1.0/bin",
					"--enable-config",
				},
			})
		end
	},
}
