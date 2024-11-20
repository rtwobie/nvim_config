return {
	'ThePrimeagen/harpoon',
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local map = function(keys, func, desc, mode)
			mode = mode or 'n'
			vim.keymap.set(mode, keys, func, { desc = 'harpoon: ' .. desc })
		end

		map("<leader>hm", require('harpoon.mark').add_file, "mark file")
		map("<leader>ho", require('harpoon.ui').toggle_quick_menu, "open menu")
		map("<C-h>", function() require('harpoon.ui').nav_file(1) end, "open file 1")
		map("<C-j>", function() require('harpoon.ui').nav_file(2) end, "open file 2")
		map("<C-k>", function() require('harpoon.ui').nav_file(3) end, "open file 3")
		map("<C-l>", function() require('harpoon.ui').nav_file(4) end, "open file 4")
	end
}
