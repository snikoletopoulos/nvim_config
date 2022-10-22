local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Keymaps

-- remap j and k to move across display lines and not real lines
keymap("n", "k", "gk", { noremap = false })
keymap("n", "j", "gj", { noremap = false })

-- Telescope
keymap("n", "<C-p>", "<Cmd>Telescope find_files<CR>", { noremap = true, silent = true })
keymap("n", "<C-f>", "<Cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

-- nvimtree
keymap("n", "<C-b>", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true })
