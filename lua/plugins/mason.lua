-- mason.nvim: installs and manages LSP servers, formatters, and linters.
-- This is the package manager layer behind editor tooling.

return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        -- Enables every Mason-installed LSP server via vim.lsp.enable(), including
        -- servers installed later at runtime.
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
        opts = {},
    },
}
