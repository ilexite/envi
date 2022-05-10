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
        config = function() require("onedark").load() end,
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
}

