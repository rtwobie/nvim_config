return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local map = function(keys, func, desc, mode)
			mode = mode or "n"
			vim.keymap.set(mode, keys, func, { desc = "harpoon: " .. desc })
		end

		map("<leader>hm", require("harpoon.mark").add_file, "mark file")
		map("<leader>ho", require("harpoon.ui").toggle_quick_menu, "open menu")
		map("<M-1>", function()
			require("harpoon.ui").nav_file(1)
		end, "open file 1")
		map("<M-2>", function()
			require("harpoon.ui").nav_file(2)
		end, "open file 2")
		map("<M-3>", function()
			require("harpoon.ui").nav_file(3)
		end, "open file 3")
		map("<M-4>", function()
			require("harpoon.ui").nav_file(4)
		end, "open file 4")
	end,
}
