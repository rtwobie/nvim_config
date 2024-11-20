return {
	"nvimtools/none-ls.nvim",
	keys = {
		{
			"<leader>ff", vim.lsp.buf.format, desc = "[F]ormat [F]ile",
		},
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.cpplint,
				-- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
			},
		})
	end,
}
