-- colors customized for posterpole.nvim
local posterpole = {
  green   = '#728C7B',
  blue   = '#6C7F92',
  black  = '#080808',
  white  = '#AEA79C',
  red    = '#A86F6F',
  violet = '#7A6183',
  grey   = '#303030',
}

-- change here to switch
local colors = posterpole

local custom_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.green } },
  visual = { a = { fg = colors.black, bg = colors.blue } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({
			options = {
				theme = 'auto',
				component_separators = '',
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
				lualine_b = { 'filename', 'branch' },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { 'filetype', 'progress' },
				lualine_z = {
					{ 'location', separator = { right = '' }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			extensions = {},
		})
	end
}
