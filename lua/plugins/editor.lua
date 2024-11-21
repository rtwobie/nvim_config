return {
	{ "tpope/vim-surround" }, -- adds commands for surrounding text with braces and quotes etc.
	-- "tpope/vim-repeat",
	{
		"m4xshen/autoclose.nvim", -- Brace Pairing/Completion
		config = function()
			require("autoclose").setup({
				-- custom stuff like
				keys = {
					["<"] = { escape = true, close = true, pair = "<>", enabled_filetypes = { "lua" } },
				},
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
}
