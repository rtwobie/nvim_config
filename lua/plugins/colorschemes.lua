return {
	{
		'nyngwang/nvimgelion',
		enabled = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme nvimgelion]])
		end,
	},
	
	{
		"ilof2/posterpole.nvim",
		enabled = true,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme posterpole]])

			-- if you need colorscheme without termguicolors support
			-- This variant set termguicolors to false, be aware of using it
			-- vim.cmd("colorscheme posterpole-term")
		end,
	}
}
