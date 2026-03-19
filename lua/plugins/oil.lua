return {
    {
        "benomahony/oil-git.nvim",
        dependencies = { "stevearc/oil.nvim" },
    },
    {
        "JezerM/oil-lsp-diagnostics.nvim",
        dependencies = { "stevearc/oil.nvim" },
        opts = {}
    },
    {
        "https://github.com/stevearc/oil.nvim",
        config = function()
            require('oil').setup()
        end
    },
}
