local feline = require("feline")
local vi_mode_utils = require("feline.providers.vi_mode")

local components = {
	active = {},
	inactive = {},
}

components.inactive[1] = {
	{
		hl = {
			bg = "bg",
		},
	},
}

components.active[1] = {
	{
		provider = "  ",
		hl = function()
			return {
				name = vi_mode_utils.get_mode_highlight_name(),
				fg = "white",
				bg = vi_mode_utils.get_mode_color(),
				style = "bold",
			}
		end,
	},
	{
		provider = "file_info",
		icon = "",
		left_sep = "  ",
		hl = {
			fg = "white",
			style = "bold",
		},
	},
	{
		provider = "position",
		left_sep = "  ",
	},
}

components.active[2] = {
	{
		provider = "line_percentage",
		right_sep = "  ",
	},
	{
		provider = "scroll_bar",
		hl = function()
			return {
				name = vi_mode_utils.get_mode_highlight_name(),
				fg = vi_mode_utils.get_mode_color(),
				style = "bold",
			}
		end,
	},
}

feline.setup({
	theme = {
		bg = "#282c34",
		fg = "#abb2bf",
		black = "#282c34",
		skyblue = "#62aeef",
		cyan = "#55b6c2",
		green = "#98c379",
		oceanblue = "#62aeef",
		magenta = "#c778dd",
		orange = "#e5c07a",
		red = "#e06b74",
		violet = "#c778dd",
		white = "#ffffff",
		yellow = "#e5c07a",
	},
	vi_mode_colors = {
		["NORMAL"] = "skyblue",
		["OP"] = "skyblue",
		["INSERT"] = "red",
		["VISUAL"] = "green",
		["LINES"] = "cyan",
		["BLOCK"] = "yellow",
		["REPLACE"] = "violet",
		["V-REPLACE"] = "violet",
		["ENTER"] = "cyan",
		["MORE"] = "cyan",
		["SELECT"] = "orange",
		["COMMAND"] = "violet",
		["SHELL"] = "skyblue",
		["TERM"] = "skyblue",
		["NONE"] = "skyblue",
	},
	components = components,
})

