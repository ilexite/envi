local alpha = require("alpha")

local function button(sc, txt, keybind)
	local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

	local opts = {
		position = "center",
		text = txt,
		shortcut = sc,
		cursor = 5,
		width = 38,
		align_shortcut = "right",
		hl = "Comment",
	}

	if keybind then
		opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
	end

	return {
		type = "button",
		val = txt,
		on_press = function()
			local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
			vim.api.nvim_feedkeys(key, "normal", false)
		end,
		opts = opts,
	}
end

local default = {}

default.ascii = {
	[[ .d88b.  88888b.  888   888 888 ]],
	[[d8P  Y8b 888 "88b 888  88P      ]],
	[[88888888 888  888 888 d8P  "888 ]],
	[[Y8b.     888  888 888d8P    888 ]],
	[[ "Y8888  888  888 8888P     888b]],
}

default.header = {
	type = "text",
	val = default.ascii,
	opts = {
		position = "center",
		hl = "NormalNC",
	},
}

default.footer = {
	type = "text",
	val = "A neovim config others will envy",
	opts = {
		position = "center",
		hl = "Comment",
	},
}

default.buttons = {
	type = "group",
	val = {
		button("SPC e n", "  New File", "<cmd>ene | :startinsert<cr>"),
		button("SPC f f", "  Find File", "<cmd>Telescope find_files<cr>"),
		button("SPC f r", "  Recent File", "<cmd>Telescope oldfiles<cr>"),
		button("SPC f t", "פּ  File Tree", "<cmd>NvimTreeFocus<cr>"),
		button("SPC t t", "  Terminal", "<cmd>terminal<cr>"),
		button("SPC e s", "  Settings", "<cmd>e $MYVIMRC | :cd %:p:h <cr>"),
	},
	opts = {
		spacing = 1,
	},
}

alpha.setup({
	layout = {
		{ type = "padding", val = 10 },
		default.header,
		{ type = "padding", val = 1 },
		default.footer,
		{ type = "padding", val = 2 },
		default.buttons,
	},
	opts = {},
})

