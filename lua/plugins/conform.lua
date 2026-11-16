-- conform.nvim: runs formatters on save and gives you a format command.
-- This handles code formatting without needing a separate formatter plugin per language.

return {
	"stevearc/conform.nvim",
	opts = {
		-- Conform skips formatters whose command is not installed. When none are
		-- available for a buffer, let an attached LSP (e.g. ruff, taplo) format it.
		default_format_opts = { lsp_format = "fallback" },
		formatters_by_ft = {
			-- Trim whitespace by default, unless an attached LSP can format the
			-- buffer; in that case let the LSP handle it (see default_format_opts).
			["*"] = function(bufnr)
				if #vim.lsp.get_clients({ bufnr = bufnr, method = "textDocument/formatting" }) > 0 then
					return {}
				end
				return { "trim_whitespace" }
			end,
			lua = { "stylua" },
			python = { "black" },
			go = { "gofmt" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			rust = { "rustfmt" },
			hc = { "clang-format" },
			glsl = { "clang-format" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			qml = { "qmlformat" },
			qmljs = { "qmlformat" },
			racket = { "racketfmt" },
			scheme = { "schemat" },
			lisp = { "clfmt" },
			commonlisp = { "clfmt" },
		},
		formatters = {
			racketfmt = {
				command = "raco",
				args = { "fmt" },
				stdin = true,
			},
			schemat = {
				command = "schemat",
				args = {},
				stdin = true,
			},
			clfmt = {
				command = "clfmt",
				args = {},
				stdin = true,
			},
			qmlformat = {
				command = "qmlformat",
				args = { "--no-sort", "-i", "$FILENAME" }, -- supposed to prevent moving of TODO comments but doesnt work
				stdin = false,
			},
			["clang-format"] = {
				prepend_args = {
					"-style={BasedOnStyle: LLVM, "
						.. "IndentWidth: 4, "
						.. "TabWidth: 4, "
						.. "UseTab: ForIndentation, "
						.. "ColumnLimit: 0, "
						.. "AlignArrayOfStructures: Left, "
						.. "AlignConsecutiveAssignments: {Enabled: true, AcrossEmptyLines: false, AcrossComments: false}, "
						.. "AlignConsecutiveDeclarations: {Enabled: true, AcrossEmptyLines: false, AcrossComments: false}, "
						.. "Cpp11BracedListStyle: false}",
				},
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
				if vim.b[args.buf].project_formatting then
					return
				end
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
