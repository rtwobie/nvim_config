return {
	"stevearc/conform.nvim",
	enabled = false,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				c = { "clang_format" },
			},
			formatters = {
				clang_format = {
					prepend_args = {
						"--style={TabWidth: 4, IndentWidth: 4, UseTab: Always, PointerAlignment: Right, BreakBeforeBraces: Allman, ColumnLimit: 80}",
						-- "--style=file",
						-- "$env:LocalAppdata/nvim/utils/linter-config/.clang-format",
					},
				},
			},
			-- format_on_save = {
			-- 	-- These options will be passed to conform.format()
			-- 	timeout_ms = 500,
			-- 	lsp_format = "fallback",
			-- },
		})
		vim.keymap.set("n", "<leader>ff", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "[F]ile [F]ormat" })
	end,
}
