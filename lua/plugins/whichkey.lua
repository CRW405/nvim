return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    win = {
      border = "double",
      col = 9999,
      width = 50,
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Local which-key",
    },
  },
}
