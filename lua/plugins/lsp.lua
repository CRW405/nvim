-- nvim-lspconfig: provides language server settings; Neovim starts them for matching files.
-- mason-lspconfig (lua/plugins/mason.lua) enables every server installed through Mason.

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
	end,
}
