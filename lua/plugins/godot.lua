return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {
          cmd = { "nc", "localhost", "6005" },
        },
      },
    },
  },
}
