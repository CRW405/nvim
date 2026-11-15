-- mason.nvim: installs and manages LSP servers, formatters, and linters.
-- This is the package manager layer behind editor tooling.

return {
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
}
