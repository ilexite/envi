local exists, feline = pcall(require, "feline")
if not exists then return end

local vi_mode_utils = require("feline.providers.vi_mode")

local exists1, p = pcall(require, "onedark.palette")
if not exists1 then return end

local c = p[vim.g.onedark_config.style]

local theme = {
    bg = "none",
    fg = c.fg,
    red = c.red,
    green = c.green,
    yellow = c.yellow,
    blue = c.blue,
    magenta = c.purple,
    cyan = c.cyan,
    white = "#ffffff",
    black = "#282c34",
    disabled = "#6b727d",
}

local components = {
    active = {},
    inactive = {},
}
components.active[1] = { {
        provider = require("nvim-web-devicons").get_icon_color(
            vim.fn.expand("%:t"), nil,
            { default = true }
        ), left_sep = " ",
    },
    {
        provider = "|",
        hl = {
            fg = "disabled",
            style = "bold",
        },
        left_sep = " ",
        right_sep = " ",
    },
    {
        provider = "file_info",
        icon = "",
        right_sep = "  ",
    },
    {
        provider = function()
            return "line: " .. vim.api.nvim_win_get_cursor(0)[1]
        end,
        hl = { fg = "disabled" },
        right_sep = "  ",
    },
    {
        provider = function()
            return "col: " .. vim.api.nvim_win_get_cursor(0)[2] + 1
        end,
        hl = { fg = "disabled" },
        right_sep = "  ",
    },
    {
        provider = "line_percentage",
        hl = { fg = "disabled" },
    },
}

components.active[2] = {
    {
        provider = function()
            return vim.api.nvim_buf_line_count(0) .. " lines"
        end,
    },
    {
        provider = "|",
        hl = {
            fg = "disabled",
            style = "bold",
        },
        left_sep = " ",
        right_sep = " ",
    },
    {
        provider = "vi_mode",
        icon = "",
        -- hl = function()
            -- return {
                -- name = vi_mode_utils.get_mode_highlight_name(),
                -- fg = vi_mode_utils.get_mode_color(),
                -- style = "bold",
            -- }
        -- end,
    },
    {
        provider = "scroll_bar",
        left_sep = "  "
    },
}

-- components.inactive[1] = { {} }

components.inactive[1] = {
    {
        provider = "file_info",
        icon = "",
        hl = { fg = "disabled" },
        left_sep = "     ",
    },
}

-- components.inactive[3] = { {} }

feline.setup({
    theme = theme,
    components = components,
})

