-- nvim-lspconfig: provides language server settings; Neovim starts them for matching files.

return {
	"neovim/nvim-lspconfig",
	dependencies = { "mason-org/mason.nvim" },
	config = function()
		vim.lsp.enable({ "lua_ls", "pyright", "clangd" })
	end,
}
