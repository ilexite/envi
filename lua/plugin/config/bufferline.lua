require("bufferline").setup({
    options = {
        indicator_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        show_buffer_close_icons = false,
        show_buffer_default_icon = false,
        show_close_icon = false,
        separator_style = { " ", " " },
        enforce_regular_tabs = true,
        always_show_bufferline = false,
    },
})

local map = require("util.map").map

map("n", "]b", "<cmd>BufferLineCycleNext<cr>")
map("n", "[b", "<cmd>BufferLineCyclePrev<cr>")
map("n", "]B", "<cmd>BufferLineMoveNext<cr>")
map("n", "[B", "<cmd>BufferLineMovePrev<cr>")

