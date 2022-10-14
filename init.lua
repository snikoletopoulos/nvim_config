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
vim.cmd([[ colorscheme nord ]])

--Tabs
vim.o.tabstop = 2 -- Insert 2 spaces for a tab
vim.o.softtabstop = vim.o.tabstop -- Insert 2 spaces for a tab
vim.o.shiftwidth = vim.o.tabstop -- Change the number of space characters inserted for indentation
vim.o.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
vim.o.autoindent = true -- Copy indent from current line
--TODO 
vim.o.expandtab = true -- Converts tabs to spaces
vim.o.shiftround = true -- Round indent
vim.o.copyindent = true -- Copy indent from current line
