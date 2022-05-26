local autocmd = vim.api.nvim_create_autocmd

-- Hide line numbers and enter INSERT mode when you open a terminal
autocmd("TermOpen", {
    callback = function()
        local o = vim.opt_local

        o.number = false
        o.relativenumber = false
        o.signcolumn = "no"

        vim.cmd("startinsert")
    end,
})

-- Disable statusbar in dashboard
autocmd("FileType", {
    pattern = "alpha",
    callback = function()
        vim.o.ruler = false
        vim.o.laststatus = 0

        vim.api.nvim_buf_set_keymap(0, "n", "<esc>", "<cmd>q!<cr>", { silent = true })
    end,
})

-- Re-enable statusbar once dashboard is closed
autocmd("BufUnload", {
    buffer = 0,
    callback = function()
        vim.o.ruler = true
        vim.o.laststatus = 3
    end,
})

-- Start in INSERT mode in new files
autocmd("BufNewFile", {
    callback = function()
        vim.cmd("startinsert")
    end,
})

-- Start spellchecker for certain filetypes
autocmd("FileType", {
    pattern = { "", "txt", "text", "markdown" },
    callback = function()
        vim.opt_local.spell = true
    end,
})

-- Highlight yanked text
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
            higroup = "Visual",
            on_visual = false,
            timeout = 300,
        })
    end,
})

-- Go back to where you left off
autocmd("BufReadPost", {
    callback = function()
        local fn = vim.fn

        if fn.expand("%:p"):match(".git") and fn.line("'\"") > 1
            and fn.line("'\"") <= fn.line("$") then
                return
        end
        
        vim.cmd("normal! g'\"")
        vim.cmd("normal zz")
    end,
})

