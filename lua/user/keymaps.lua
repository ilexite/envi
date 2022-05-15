local map = require("util.map").map

-- Press `<esc>` in NORMAL mode to remove search highlight
map("n", "<esc>", "<cmd>noh<cr>")

-- Move cursor with hjkl in insert mode; may cause problems with backspace.
map("i", "<C-h>", "<left>")
map("i", "<C-j>", "<down>")
map("i", "<C-k>", "<up>")
map("i", "<C-l>", "<right>")

-- Move between windows without `<C-w>`
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Easier access to normal mode in terminals
map("t", "<esc><esc>", "<C-\\><C-n>")

-- Why waste an extra keypress?
map("n", ";", ":")
map("v", ";", ":")

function textwidth()
    local o = vim.opt_local

    if o.textwidth._value == 0 then
        o.textwidth = 80
    elseif o.textwidth._value == 80 then
        o.textwidth = 120
    else
        o.textwidth = 0
    end
end

-- Cycle margin widths
map("n", "<leader>m", "<cmd>lua textwidth()<cr>")

-- In case you forget to <Esc>
map("i", ":q<cr>", "<cmd>q<cr>")
map("i", ":wq<cr>", "<cmd>wq<cr>")

