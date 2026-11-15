-- multicursors.nvim: edit the same change across multiple matching spots at once.

return {
	"smoka7/multicursors.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvimtools/hydra.nvim",
	},
	opts = {},
	cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
	keys = require("settings.keymap").plugin_keys["multicursors.nvim"],
}
