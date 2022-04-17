local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git", "clone", "--depth=1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd("packadd packer.nvim")

local packer = require("packer")

packer.startup(function(use)
	-- Improve startup time
	use("lewis6991/impatient.nvim")
	use("nathom/filetype.nvim")

	-- Packer manages itself
	use({
		"wbthomason/packer.nvim",
		opt = true,
		event = "VimEnter",
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		event = { "BufRead", "BufNewFile" },
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = "maintained",
				highlight = {
					enabled = true,
					use_languagetree = true,
				},
				autotag = {
					enable = true,
				},
			})
		end,
	})

	-- Theme (onedark)
	use({
		"navarasu/onedark.nvim",
		config = function()
			require("onedark").load()
		end,
	})

	-- Statusbar
	use({
		"feline-nvim/feline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function() require("plugins.feline") end,
	})

	-- File tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup()
		end,
	})

	-- File finder and previewer
	use({
		"nvim-telescope/telescope.nvim",
		requires = "nvim-lua/plenary.nvim",
	})

	-- Highlight CSS colors
	use({
		"norcalli/nvim-colorizer.lua",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("colorizer").setup({ "*" }, {
				css = true,
			})
		end,
	})

	-- Zen mode
	use("pocco81/truezen.nvim")

	-- Git diff lines
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { hl = "GitSignsAdd", text = "▌" },
					change = { hl = "GitSignsChange", text = "▌" },
					delete = { hl = "GitSignsDelete", text = "▌" },
					topdelete = { hl = "GitSignsDelete", text = "▌" },
					changedelete = { hl = "GitSignsChange", text = "▌" },
				},
			})
		end,
	})

	-- Extend the % key
	use("andymass/vim-matchup")

	-- Dashboard
	use({
		"goolord/alpha-nvim",
		config = function() require("plugins.alpha") end,
	})

	-- Commenting keymaps
	use({
		"numToStr/Comment.nvim",
		tag = "v0.6",
		config = function() require("Comment").setup() end,
	})

	-- Auto-pair brackets and quotes
	use({
		"windwp/nvim-autopairs",
		after = "nvim-treesitter",
		config = function()
			require("nvim-autopairs").setup({ check_ts = true })
		end,
	})

	-- Auto-pair HTML/XML/JSX tags
	use({
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})

	-- Alignment
	use("kg8m/vim-simple-align")

	-- Language Server Protocol
	use({
		"neovim/nvim-lspconfig",
		config = function() require("plugins.lspconfig") end,
	})

	-- Snippets
	use({
		"rafamadriz/friendly-snippets",
		event = "InsertEnter",
	})

	-- Also snippets
	use({
		"L3MON4D3/LuaSnip",
		config = function() require("plugins.luasnip") end,
	})

	-- Auto-completion
	use({
		"hrsh7th/nvim-cmp",
		config = function() require("plugins.cmp") end,
	})

	-- Auto-completion sources
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")

	-- Signatures
	use({
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup({
				handler_opts = {
					border = "none",
				},
			})
		end,
	})

	if packer_bootstrap then
		packer.sync()
	end
end)

