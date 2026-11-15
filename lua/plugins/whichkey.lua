-- which-key.nvim: shows the available keybindings as you type.

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		win = {
			border = "double",
			col = 9999,
			width = 50,
		},
	},
	keys = require("settings.keymap").plugin_keys["which-key.nvim"],
}
