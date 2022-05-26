local telescope = require("telescope")

telescope.setup({
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
        prompt_prefix = "  ",
        selection_caret = "  ",
        entry_prefix = "   ",
        sorting_strategy = "ascending",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_with = 0.8,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = { "node_modules", "target" },
        path_display = { "truncate" },
        winblend = 0,
        border = {},
        borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    },
})

vim.cmd([[
    highlight TelescopeNormal guibg=#31353f
    highlight TelescopePromptNormal guibg=#393f4a

    highlight TelescopePreviewTitle guibg=#61afef guifg=#282c34
    highlight TelescopePromptTitle guibg=#e86671 guifg=#282c34

    highlight TelescopeBorder guifg=#31353f guibg=#31353f
    highlight TelescopePromptBorder guibg=#393f4a
    highlight TelescopePreviewBorder guifg=#31353f guibg=#31353f
    highlight TelescopeResultsBorder guifg=#31353f guibg=#31353f
]])

