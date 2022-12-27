local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}
)

-- Install your plugins here
return packer.startup(function(use)
  -- Packer and Icons
  use("wbthomason/packer.nvim")
  use("kyazdani42/nvim-web-devicons")
  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  -- use 'nvim-telescope/telescope-file-browser.nvim'
  -- Nvim treesitter for the syntax highlight
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })
  -- LSP Support
  use({ "neovim/nvim-lspconfig" })
  use("onsails/lspkind.nvim")
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
  })
  -- use("williamboman/nvim-lsp-installer")
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  -- Autocompletion
  use({ "hrsh7th/nvim-cmp" })
  use({ "hrsh7th/cmp-buffer" })
  use({ "hrsh7th/cmp-path" })
  use({ "saadparwaiz1/cmp_luasnip" })
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })
  -- Snippets
  use({ "L3MON4D3/LuaSnip" })
  use({ "rafamadriz/friendly-snippets" })
  use("jose-elias-alvarez/null-ls.nvim")
  use("nvim-tree/nvim-tree.lua")
  -- auto close brackets and tags
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })
  use("windwp/nvim-ts-autotag")
  use("tpope/vim-commentary")
  -- lualine for git and mode
  use({
    "nvim-lualine/lualine.nvim",
  })
  -- Git Signs
  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  })
  -- Theme
  use("JoosepAlviste/palenightfall.nvim")
  use("rebelot/kanagawa.nvim")
  -- Nvim surround
  use({
    "kylechui/nvim-surround",
    tag = "main", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })
  -- colors highlighter
  use("folke/lsp-colors.nvim")
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({})
    end,
  })
  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end,
  })
  use("tpope/vim-fugitive")
  use("MunifTanjim/prettier.nvim")
  use { 'akinsho/bufferline.nvim', tag = "v3.*" }
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
