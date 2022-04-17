function map(mode, keys, cmd, opt)
	local options = { noremap = true, silent = true }
	if opt then
		options = vim.tbl_extend("force", options, opt)
	end

	local valid_modes = {
		[""] = true,
		["n"] = true,
		["v"] = true,
		["s"] = true,
		["x"] = true,
		["o"] = true,
		["!"] = true,
		["i"] = true,
		["l"] = true,
		["c"] = true,
		["t"] = true,
	}

	local function map_wrapper(sub_mode, lhs, rhs, sub_options)
		if type(lhs) == "table" then
			for _, key in ipairs(lhs) do
				map_wrapper(sub_mode, key, rhs, sub_options)
			end
		else
			if type(sub_mode) == "table" then
				for _, m in ipairs(sub_mode) do
					map_wrapper(m, lhs, rhs, sub_options)
				end
			else
				if valid_modes[sub_mode] and lhs and rhs then
					vim.api.nvim_set_keymap(sub_mode, lhs, rhs, sub_options)
				else
					sub_mode, lhs, rhs = sub_mode or "", lhs or "", rhs or ""
					print(
					"Cannot set mapping [ mode = '" .. sub_mode .. "' | key = '" .. lhs .. "' | cmd = '" .. rhs .. "' ]"
					)
				end
			end
		end
	end

	map_wrapper(mode, keys, cmd, options)
end

map("n", "<esc>", "<cmd>noh<cr>")

map("i", "<C-h>", "<left>")
map("i", "<C-j>", "<down>")
map("i", "<C-k>", "<up>")
map("i", "<C-l>", "<right>")

map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")

map("t", "<esc><esc>", "<C-\\><C-n>")

map("n", ";", ":")

map("n", "<leader>t", "<cmd>vnew +terminal<cr>")
map("n", "<leader>T", "<cmd>new +terminal<cr>")

map("v", "ga", ":SimpleAlign ")

