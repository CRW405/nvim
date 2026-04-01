return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim"
  },
  config = function()
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require('windows').setup({
      autowidth = {
        enable = true,
        winwidth = 0.70,
        filetype = {
          help = 2,
        },
      },
      ignore = {
        buftype = { "quickfix" },
        filetype = { "NvimTree", "neo-tree", "undotree", "gundo", "oil" }
      },
      animation = {
        enable = true,
        duration = 150,
        fps = 60,
        easing = "in_out_sine"
      }
    })
  end,
  keys = {
    { "<C-w>z", "<cmd>WindowsMaximize<cr>", desc = "Maximize window" },
    { "<C-w>=", "<cmd>WindowsEqualize<cr>", desc = "Equalize windows" },
    { "<C-w>_", "<cmd>WindowsMaximizeVertically<cr>", desc = "Maximize vertically" },
    { "<C-w>|", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "Maximize horizontally" },
  }
}
