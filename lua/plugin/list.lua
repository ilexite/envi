return {
    {
        "wbthomason/packer.nvim", 
        opt = true,
        event = "VimEnter",
    },

    { "lewis6991/impatient.nvim" },
    { "nathom/filetype.nvim" },

    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({ transparent = true })
            require("onedark").load()
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufRead", "BufNewFile" },
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = {
                    enable = true,
                    use_languagetree = true,
                    disable = { "org" },
                    additional_vim_regex_highlighting = { "org" },
                },
                indent = {
                    enable = true,
                },
            })
        end,
    },

    {
        "feline-nvim/feline.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        after = "onedark.nvim",
        config = function() require("plugin.config.feline") end,
    },

    {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("nvim-tree").setup() end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
			require("gitsigns").setup({
				signs = {
					add = { hl = "GitSignsAdd", text = "▌" },
					change = { hl = "GitSignsChange", text = "▌" },
					delete = { hl = "GitSignsDelete", text = "▌" },
					topdelete = { hl = "GitSignsDelete", text = "▘" },
					changedelete = { hl = "GitSignsChange", text = "▌" },
				},
			})
        end,
    },

    {
        "norcalli/nvim-colorizer.lua",
        event = { "BufRead", "BufNewFile" },
        config = function()
            require("colorizer").setup({
                "*",
                css = { mode = "foreground" },
            }, {
                css = true,
                mode = "foreground",
                names = false,
            })
        end,
    },

    {
        "windwp/nvim-autopairs",
        after = "nvim-treesitter",
        config = function()
            require("nvim-autopairs").setup({ check_ts = true })
        end,
    },

    { "andymass/vim-matchup" },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    {
        "goolord/alpha-nvim",
        config = function() require("plugin.config.alpha") end,
    },

    {
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("plugin.config.bufferline") end,
    },

    {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function() require("plugin.config.telescope") end,
    },

    {
        "williamboman/nvim-lsp-installer",
        module = "nvim-lsp-installer",
        setup = function()
            vim.defer_fn(function()
                vim.cmd("silent! e %")
            end, 0)
        end,
    },

    {
        "neovim/nvim-lspconfig",
        after = "nvim-lsp-installer",
        config = function() require("plugin.config.lspconfig") end,
    },

    {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function()
            require("lsp_signature").setup({
                handler_opts = {
                    border = "none",
                },
            })
        end,
    },

    {
        "rafamadriz/friendly-snippets",
        event = "InsertEnter",
    },

    {
        "L3MON4D3/LuaSnip",
        config = function()
            require("luasnip").config.set_config({
                history = true,
                update_events = "TextChanged,TextChangedI",
            })
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        config = function() require("plugin.config.cmp") end,
    },

    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-path" },
}

