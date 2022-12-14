vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "bash",
    "c",
    "css",
    "html",
    "tsx",
    "typescript",
    "javascript",
    "json",
    "lua",
    "python",
    "dockerfile",
    "graphql",
    "regex",
    "yaml",
    "http",
    "jsdoc",
    "prisma",
    "scss",
    "sql",
    "vim",
    "vue",
    "gitignore",
    "dot",
  },
  sync_install = false,
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  -- TODO
  indent = {
    enable = true
  },
})
