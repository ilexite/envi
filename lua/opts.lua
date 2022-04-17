local o = vim.opt
local g = vim.g

-- Indent
o.shiftwidth = 4
o.tabstop = 4
o.expandtab = false
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

-- Line column
o.number = true
o.relativenumber = true
o.numberwidth = 5
o.signcolumn = "yes"

-- Misc
o.scrolloff = 3
o.showmode = false
o.title = true
o.clipboard = "unnamedplus"
o.cul = false
o.cmdheight = 1
o.fillchars = ""
o.hidden = true
o.mouse = ""
o.termguicolors = true
o.ruler = true

-- GUI
o.guifont = "JetBrains Mono:h9"

-- De-bloat

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

