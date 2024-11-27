return {
	{
		'nyngwang/nvimgelion',
		enabled = false,
		name = "nvimgelion",
	},
	{
		'ptdewey/darkearth-nvim',
		enabled = false,
		name = "darkearth",
	},
	{
		"ilof2/posterpole.nvim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme posterpole]])
		end
	},
}
