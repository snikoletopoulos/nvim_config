-- Imports
require("keymaps")
require("plugins")
require("plugin_config.treesitter")

-- Cursor
vim.opt.showmode = false -- The mode is shown in the statusline
vim.opt.cursorline = true -- Highlight the current line

vim.opt.wildmenu = true -- Command-line completion
vim.optshowmatch = true -- Highlight matching brackets when text indicator is over them
vim.opt.scrolloff = 3 -- Lines of context

--Bars
vim.opt.showtabline = 2 -- Always show tabs
vim.opt.laststatus = 3 -- Always show statusline

--Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

--Do not save when switching buffers
vim.o.hidden = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.cmd([[ colorscheme dracula ]])
