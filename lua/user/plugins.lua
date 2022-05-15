local M = {}

-- Names of plugins to disable
M.disable = {
    "akinsho/bufferline.nvim",
}

-- Custom plugins to use
M.custom = {
    {
        "rcarriga/nvim-notify",
        config = function()
            vim.cmd([[
                highlight link NotifyERRORBorder ErrorMsg
                highlight link NotifyWARNBorder WarningMsg
                highlight link NotifyINFOBorder Normal
                highlight link NotifyERRORTitle Normal
                highlight link NotifyWARNTitle Normal
                highlight link NotifyINFOTitle Normal
                highlight link NotifyERRORBody Normal
                highlight link NotifyWARNBody Normal
                highlight link NotifyINFOBody Normal
            ]])

            local notify = require("notify")

            notify.setup({
                background_color = "#000000",
                level = "info",
                minimum_width = "1",
                render = "minimal",
                stages = "slide",
                timeout = 3000,
            })

            vim.notify = function(message, ...)
                notify(string.format(" %s ", message), ...)
            end
        end,
    },

    {
        "nvim-orgmode/orgmode",
        after = "nvim-treesitter",
        config = function()
            require("orgmode").setup_ts_grammar()
            require("orgmode").setup({})
        end,
    },
}

return M

