local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	-- Packer and Icons
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")
	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
  use 'nvim-telescope/telescope-file-browser.nvim'
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
	-- auto close brackets and tags
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("windwp/nvim-ts-autotag")
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
end)

vim.cmd([[colorscheme palenightfall]])
