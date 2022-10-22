require("nvim-tree").setup({
  renderer = {
    indent_markers = {
      enable = false,
    },
  },
  view = {
    hide_root_folder = true,
    side = "left",
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = { ".git", "node_modules", ".cache" },
  },
})

-- vim.g.nvim_tree_width = 40
vim.g.nvim_tree_highlight_opened_files = 1
