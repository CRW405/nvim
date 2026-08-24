return {
	"stevearc/oil.nvim",
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
	keys = {
		{
			"<leader>o",
			function()
				vim.cmd("Oil " .. vim.fn.expand("%:p:h"))
			end,
			desc = "Open current file location in Oil",
		},
	},
	opts = {
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name, bufnr)
				local m = name:match("^%.")
				return m ~= nil
			end,
		},
	},
}
