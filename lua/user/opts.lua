-- For help with options, see `:help <option>`.
-- For a list of possible options, type `:set ` and press `<tab>`.
-- For a list of global variables, type `:let g:` and press `<tab>`.

local o = vim.o -- :set opt=val
local g = vim.g -- :let g:opt=val

-- Indent
o.shiftwidth = 4
o.tabstop = 4
o.expandtab = true
o.smartindent = true

-- Search
o.ignorecase = true
o.smartcase = true

-- Leader
g.mapleader = " "
o.timeoutlen = 200

-- Windows
o.splitright = true
o.splitbelow = false

-- Line number column
o.number = true
o.relativenumber = true
o.numberwidth = 5
o.signcolumn = "yes"

-- Other
o.scrolloff = 5
o.showmode = false
o.title = true
o.clipboard = "unnamedplus"
o.cul = false
o.cmdheight = 1
-- o.fillchars = "eob: ,horiz: ,horizup: ,horizdown: ,vert: ,vertleft: ,vertright: ,verthoriz: "
o.fillchars = "eob: "
o.laststatus = 3
o.hidden = true
o.mouse = ""
o.termguicolors = true
o.ruler = true
-- o.shell = "/bin/sh"
o.lazyredraw = true
o.undofile = true
o.colorcolumn = "+0"

-- Disable builtins which aren't needed
local disabled_builtins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"metrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
}

for _, plugin in pairs(disabled_builtins) do
	g["loaded_" .. plugin] = 1
end

local disabled_providers = {
    "python3",
    "ruby",
    "node",
    "perl",
}

for _, provider in pairs(disabled_providers) do
    g["loaded_" .. provider .. "_provider"] = 0
end

