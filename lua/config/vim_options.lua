local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.mouse = "a"

opt.showmode = false

opt.breakindent = true -- Enable break indent
opt.autoindent = true
opt.undofile = true -- Save undo history
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes" -- Keep signcolumn on by default
opt.updatetime = 250 -- Decrease update time
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
-- opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

opt.list = false
opt.listchars = { tab = "> ", trail = "·", nbsp = "␣" }
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.inccommand = "split" -- Preview substitutions live, as you type!
opt.cursorline = true -- Show which line your cursor is on
opt.scrolloff = 15 -- Minimal number of screen lines to keep above and below the cursor.
opt.hlsearch = false -- Set highlight on search, but clear on pressing <Esc> in normal mode

local map = vim.keymap.set

map("n", "<CR>", "o<Esc>")

map("n", "<Esc>", "<cmd>nohlsearch<cr>")
map({ "i", "v" }, "<C-j>", "<Esc>")
map("n", "<C-s>", "<cmd>w<cr>")

-- Yank into clipboard
map("n", "<leader>Y", '"+Y')

-- move lines with Alt
map("v", "<M-j>", ":m '>+1<CR>gv=gv")
map("v", "<M-k>", ":m '<-2<CR>gv=gv")
map("n", "<M-j>", ":m .+1<CR>==")
map("n", "<M-k>", ":m .-2<CR>==")
map("i", "<M-j>", "<cmd>m .+1<cr>")
map("i", "<M-k>", "<cmd>m .-2<cr>")

-- Move Selection inside of line
map("v", "<M-l>", "lholhxp`[1v")
map("v", "<M-h>", "hlohlxhP`[1v")
map("n", "<M-l>", "xp")
map("n", "<M-h>", "xhhp")

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

--- Auto-remove trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	callback = function()
		local cursor_pos = vim.api.nvim_win_get_cursor(0)
		vim.cmd([[%s/\s\+$//e]])
		vim.api.nvim_win_set_cursor(0, cursor_pos)
	end,
})
