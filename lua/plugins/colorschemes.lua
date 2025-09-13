return {
	{
		"rktjmp/lush.nvim",
		-- if you wish to use your own colorscheme:
		-- {
		-- 	dir = '/home/r2b/lovelain-color',
		-- 	lazy = true,
		-- 	-- priority = 1000,
		-- },
	},
	{
		'nyngwang/nvimgelion',
		lazy = true,
		name = "nvimgelion",
	},
	{
		'ptdewey/darkearth-nvim',
		lazy = true,
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
	{
		"EdenEast/nightfox.nvim",
		lazy = true,
		-- priority = 1000,
		config = function()
			vim.cmd([[colorscheme carbonfox]])
		end,
	},
	{
		"shaunsingh/nord.nvim",
		lazy = true,
		config = function()
			vim.cmd("colorscheme nord")
		end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme moonfly")
		end,
	},
}
