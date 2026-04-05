return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			["*"] = { "trim_whitespace" },
			lua = { "stylua" },
			python = { "black" },
			go = { "gofmt" },
			c = { "clang_format -style='{BasedOnStyle: LLVM, UseTab: ForIndentation, TabWidth:4, IndentWidth:4}'" },
			cpp = { "clang_format -style='{BasedOnStyle: LLVM, UseTab: ForIndentation, TabWidth:4, IndentWidth:4}'" },
			javascript = { "prettier --use-tabs" },
			typescript = { "prettier --use-tabs" },
			css = { "prettier --use-tabs" },
			html = { "prettier --use-tabs" },
		},

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		}),

		vim.keymap.set("n", "<leader>cf", function()
			vim.notify("Formatting file...", vim.log.levels.INFO)
			require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
		end, { desc = "Format File" }),
	},
}
