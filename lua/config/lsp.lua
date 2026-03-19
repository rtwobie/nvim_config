vim.lsp.config('*', {
	on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, {
            autotrigger = true,
            convert = function(item)
                return { abbr = item.label:gsub("%b()", "") }
            end,
        })
        -- Example custom keybind for triggering autocompletion
        -- vim.keymap.set("i", "<C-space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
    end
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

-- Add LSPs inside here to enable them
vim.lsp.enable({
	'clangd',
	'qmlls',
    'lua_ls',
})
