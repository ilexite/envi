local autocmd = vim.api.nvim_create_autocmd

autocmd("TermOpen", {
    callback = function()
        local o = vim.opt_local

        o.number = false
        o.relativenumber = false
        o.signcolumn = "no"

        vim.cmd("startinsert")
    end,
})

