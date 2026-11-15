-- bufferline.nvim: shows open buffers as a tab-like strip across the top.

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	keys = require("settings.keymap").plugin_keys["bufferline.nvim"],
	opts = {
		options = {
			close_command = "bdelete! %d",
			right_mouse_command = "bdelete! %d",
			diagnostics = "nvim_lsp",
			always_show_bufferline = false,
			offsets = {
				{
					filetype = "neo-tree",
					text = "Neo-tree",
					highlight = "Directory",
					text_align = "left",
				},
			},
		},
	},
}
