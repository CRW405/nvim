-- sidekick.nvim: AI CLI workflow for Copilot-style next edits and terminal-based AI tools.

return {
	"folke/sidekick.nvim",
	opts = {
		-- add any options here
		cli = {
			mux = {
				backend = "tmux",
				enabled = false,
			},
		},
	},
	keys = require("settings.keymap").plugin_keys["sidekick.nvim"],
}
