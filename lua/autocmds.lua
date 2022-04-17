-- Hide line numbers in terminals and start in insert mode
vim.cmd("au TermOpen term://* setlocal nonumber norelativenumber signcolumn=no | setfiletype terminal | startinsert")

