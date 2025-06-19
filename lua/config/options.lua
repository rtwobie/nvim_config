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

-- diplay whitespaces
opt.list = false
opt.listchars = { tab = "> ", trail = "·", nbsp = "␣" }

opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.inccommand = "split" -- Preview substitutions live, as you type!
opt.cursorline = true -- Show which line your cursor is on
opt.scrolloff = 15 -- Minimal number of screen lines to keep above and below the cursor.
opt.hlsearch = false -- Set highlight on search, but clear on pressing <Esc> in normal mode

local cmd = vim.cmd

cmd("set colorcolumn=80")
cmd("hi ColorColumn ctermbg=0 guibg=#2B2622")
