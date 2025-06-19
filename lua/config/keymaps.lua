local map = vim.keymap.set

-- Disable Search highliting after pressing escape
map("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Escaping to normal mode
-- map({ "i", "v" }, "<C-j>", "<Esc>")

map("n", "<CR>", "o<Esc>")

-- save file with Ctrl+S
-- map("n", "<C-s>", "<cmd>w<cr>")

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
