-- telescope.nvim: fuzzy finder for files, grep, recent files, and other searchable lists.
-- This is the main picker/search tool and a common replacement for built-in file search.

return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = require("settings.keymap").plugin_keys["telescope.nvim"],
}
