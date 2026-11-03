return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = { name = "ollama", model = "qwen2.5-coder:32b-instruct" },
				},
				inline = {
					adapter = { name = "ollama", model = "qwen2.5-coder:7b-instruct" },
				},
			},
			adapters = {
				ollama = function()
					return require("codecompanion.adapters").use("ollama", {
						schema = {
							model = { default = "qwen2.5-coder:32b-instruct" },
						},
					})
				end,
			},
		})
	end,
}
