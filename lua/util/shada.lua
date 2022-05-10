vim.o.shadafile = ""

vim.schedule(function()
    vim.o.shadafile = vim.fn.expand("$HOME" .. "/.local/share/nvim/shada/main.shada")
    vim.cmd("silent! rsh")
end)

