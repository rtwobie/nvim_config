local map = vim.keymap.set

-- Disable Search highliting after pressing escape
map("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Escaping to normal mode
-- map({ "i", "v" }, "<C-j>", "<Esc>")

map("n", "<CR>", "o<Esc>")

-- save file with Ctrl+S
-- map("n", "<C-s>", "<cmd>w<cr>")

-- Yank into clipboard
map({ "n", "v", "x" }, "<leader>Y", '"+Y')

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

-- Plugin keymaps

-- fzf-lua
map("n", "<leader>ff", "<CMD>:FzfLua files<CR>", { desc = "Find file" })
map("n", "<leader>fb", "<CMD>:FzfLua buffe s<CR>", { desc = "Find buffers" })
map("n", "<leader>fgr", "<CMD>:FzfLua grep<CR>", { desc = "Find by live grep" })
map("n", "<leader>fgw", "<CMD>:FzfLua grep_cword<CR>", { desc = "Find by current word" })
map("n", "<leader>fgW", "<CMD>:FzfLua grep_cWORD<CR>", { desc = "Find by current WORD" })

-- oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- compile-mode
map("n", "<leader>c", "<CMD>:Compile<CR>", { desc = "Enter Compile Mode" })
map("n", "<leader>rc", "<CMD>:Recompile<CR>", { desc = "Recompile" })
