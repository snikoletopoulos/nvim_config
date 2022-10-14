local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Keymaps

-- remap j and k to move across display lines and not real lines
keymap("n", "k", "gk", { noremap = false })
keymap("n", "j", "gj", { noremap = false })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", "<Cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", "<Cmd>Telescope live_grep<CR>", { noremap = true, silent = true })


-- Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.cmd([[ colorscheme dracula ]])
