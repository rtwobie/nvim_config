return {
	'ThePrimeagen/harpoon',
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>hm", "<cmd>lua require('harpoon.mark').add_file<cr>", desc = "mark file" },
		{ "<leader>ho", "<cmd>lua require('harpoon.ui').toggle_quick_menu<cr>", desc = "Harpoon Menu" },

		{ "<C-h>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>" },
		{ "<C-j>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>" },
		{ "<C-k>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>" },
		{ "<C-l>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>" },
	}
}
