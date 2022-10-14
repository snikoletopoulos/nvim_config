require("plugin_config.treesitter")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
  -- My plugins here

  ---------- colorschemes ----------
  use('dracula/vim') -- Dracula theme
  use('gruvbox-community/gruvbox') -- gruvbox theme
  use("arcticicestudio/nord-vim") -- Nord theme
  use("rakr/vim-one") -- Atom theme
  use({
    "folke/tokyonight.nvim",
    config = function()
      vim.g.tokyonight_style = "night"
    end,
  }) -- tokyonight theme
  ----------------------------------

  ---------- Treesitter ----------
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    requires = { { "nvim-telescope/telescope.nvim" } },
    config = function()
      require("telescope").load_extension("fzf")
    end,
  })
  --------------------------------

  -- Telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
  })

  use("wellle/targets.vim")
  use("tpope/vim-surround")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
