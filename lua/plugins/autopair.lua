-- nvim-autopairs: auto-closes brackets, quotes, and parentheses while typing.

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({
			check_ts = true,
			ts_config = {
				lua = { "string", "source" },
				javascript = { "template_string" },
				java = false,
			},
		})
	end,
}
