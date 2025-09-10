return {
	{
		"rktjmp/lush.nvim",
		-- if you wish to use your own colorscheme:
		{
			dir = '/home/r2b/lovelain-color',
			lazy = true,
			-- priority = 1000,
		},
	},
	-- {
	-- 	'AlphaTechnolog/pywal.nvim',
	-- 	name = 'pywal',
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme pywal]])
	-- 	end,
	-- },
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
}
