-- toggleterm.nvim: persistent terminal windows with float, split, and vertical layouts.

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = require("settings.keymap").plugin_keys["toggleterm.nvim"],
	opts = {
		size = function(term)
			if term.direction == "horizontal" then
				return 15
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.4
			end
		end,
		hide_numbers = true,
		shade_terminals = false,
		shading_factor = 2,
		start_in_insert = true,
		insert_mappings = true,
		terminal_mappings = true,
		persist_size = true,
		persist_mode = true,
		direction = "horizontal",
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			winblend = 0,
		},
		on_open = function(term)
			require("settings.keymap").map_toggleterm_buffer(term.bufnr)
		end,
	},
}
