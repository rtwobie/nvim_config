return {
	{
		'nyngwang/nvimgelion',
		lazy = true,
		name = "nvimgelion",
	},
	{
		'ptdewey/darkearth-nvim',
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme darkearth]])
		end,
	},
	{
		"ilof2/posterpole.nvim",
		lazy = true,
		config = function()
			vim.cmd([[colorscheme posterpole]])
		end
	},
}
