return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<c-/>", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle Terminal" },
    { "<c-_>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Float Terminal" },
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal size=15<cr>", desc = "Horizontal Terminal" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<cr>", desc = "Vertical Terminal" },
  },
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<c-/>]],
    hide_numbers = true,
    shade_terminals = false,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = "curved",
      winblend = 0,
    },
  },
}
