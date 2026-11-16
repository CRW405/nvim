-- nvim-lspconfig: provides language server settings; Neovim starts them for matching files.

return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason-org/mason.nvim" },
	config = function()
		vim.lsp.config("lua_ls", {
			settings = { Lua = { diagnostics = { globals = { "vim", "Snacks" } } } },
		})
		vim.lsp.config("rust_analyzer", {
			settings = {
				["rust-analyzer"] = {
					cargo = { allFeatures = true },
					check = { command = "clippy" },
				},
			},
		})
		vim.lsp.enable({ "lua_ls", "pyright", "clangd", "rust_analyzer" })
	end,
}
