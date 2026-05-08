return { -- Highlight, edit, and navigate code

	'nvim-treesitter/nvim-treesitter',
    branch = 'main',
	main = 'nvim-treesitter', -- Sets main module to use for opts
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
	-- opts = {
	-- 	auto_install = true,
	-- 	rainbow = {
	-- 		enable = true,
	-- 		extended_mode = true,
	-- 		max_file_line = 1000,
	-- 	},
	-- },
    init = function()
        vim.api.nvim_create_autocmd('FileType', {
            callback = function()
                pcall(vim.treesitter.start)
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
    config = function()
        local ensureInstalled = {
            'lua', 'c', 'markdown',
        }
        local alreadyInstalled = require('nvim-treesitter.config').get_installed()
        local parsersToInstall = vim.iter(ensureInstalled)
            :filter(function(parser)
                return not vim.tbl_contains(alreadyInstalled, parser)
            end)
            :totable()
        require('nvim-treesitter').install(parsersToInstall)
    end,
}
