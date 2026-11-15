-- windows.nvim: gives animated maximize and resize behavior for window layout.
-- This overlaps with built-in window commands like C-w = and C-w _; useful, but optional.

return {
	"anuvyklack/windows.nvim",
	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
	config = function()
		vim.o.winwidth = 10
		vim.o.winminwidth = 10
		vim.o.equalalways = false
		require("windows").setup({
			autowidth = {
				enable = true,
				winwidth = 0.70,
				filetype = {
					help = 2,
				},
			},
			ignore = {
				buftype = { "quickfix" },
				filetype = { "NvimTree", "neo-tree", "undotree", "gundo", "oil" },
			},
			animation = {
				enable = true,
				duration = 150,
				fps = 60,
				easing = "in_out_sine",
			},
		})
	end,
	keys = require("settings.keymap").plugin_keys["windows.nvim"],
}
