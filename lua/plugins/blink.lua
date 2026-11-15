-- blink.cmp: fast completion engine for LSP, snippet, path, and buffer suggestions.
-- It is a modern, lighter alternative to larger completion setups such as nvim-cmp.

return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",

	---@module "blink.cmp"
	---@type blink.cmp.Config
	opts = {
		keymap = require("settings.keymap").blink_keymap,
		appearance = {
			nerd_font_variant = "mono",
		},
		signature = {
			enabled = true,
		},
		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 150,
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	opts_extend = { "sources.default" },
}
