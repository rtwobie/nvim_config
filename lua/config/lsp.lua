-- Add LSPs inside here to enable them
vim.lsp.enable({
	'clangd',
})

-- Display Diagnostic Messages
vim.diagnostic.config({
	-- Use either virtual_text diagnostics in the line
	virtual_text = true,
	-- or virutal_lines for diagnostics to the specific column
	-- virtual_lines = true,

    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
