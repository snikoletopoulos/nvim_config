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

return require('packer').startup({ function(use)
  use('wbthomason/packer.nvim')
  -- My plugins here

  ---------- colorschemes ----------
  use("dracula/vim") -- Dracula theme
  use("gruvbox-community/gruvbox") -- gruvbox theme
  use("arcticicestudio/nord-vim") -- Nord theme
  use("rakr/vim-one") -- Atom theme
  use({
    "folke/tokyonight.nvim",
    config = function()
      vim.g.tokyonight_style = "night"
    end,
  }) -- tokyonight theme
  use({ "sonph/onehalf", rtp = 'vim' }) -- onejalf theme
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

  ---------- Telescope ----------
  use({
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
  })
  --------------------------------

  ---------- NerdTree ----------
  use({
    "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("plugin_config.nvimtree")
    end,
  }) -- Nerd tree alternative for listing files
  --------------------------------

  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require("plugin_config.galaxyline")
    end,
  })
  use("Iron-E/nvim-highlite")

  use("wellle/targets.vim")
  use("tpope/vim-surround")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  } })
