return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			["*"] = { "trim_whitespace" },
			lua = { "stylua" },
			python = { "black" },
			go = { "gofmt" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			qml = { "qmlformat" },
			qmljs = { "qmlformat" },
		},
		formatters = {
			qmlformat = {
				command = "qmlformat",
				args = { "--no-sort", "-i", "$FILENAME" },
				stdin = false,
			},
			["clang-format"] = {
				prepend_args = { "-style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: ForIndentation}" },
			},
			prettier = {
				prepend_args = { "--use-tabs" },
			},
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})

		vim.keymap.set("n", "<leader>cf", function()
			vim.notify("Formatting file...", vim.log.levels.INFO)
			require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
		end, { desc = "Format File" })
	end,
}
