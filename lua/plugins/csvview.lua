-- csvview.nvim: reads CSV files in a table-like view with field-by-field navigation.

return {
	"hat0uma/csvview.nvim",
	---@module "csvview"
	---@type CsvView.Options
	opts = {
		parser = { comments = { "#", "//" } },
		keymaps = require("settings.keymap").csvview_keymaps,
	},
	cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
}
