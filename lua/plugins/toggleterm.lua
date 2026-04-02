return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<c-/>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    { "<leader>tf1", "<cmd>ToggleTerm 1 direction=float<cr>", desc = "Float Terminal 1" },
    { "<leader>th1", "<cmd>ToggleTerm 1 direction=horizontal size=15<cr>", desc = "Horizontal Terminal 1" },
    { "<leader>tv1", "<cmd>ToggleTerm 1 direction=vertical size=80<cr>", desc = "Vertical Terminal 1" },
    { "<leader>tf2", "<cmd>ToggleTerm 2 direction=float<cr>", desc = "Float Terminal 2" },
    { "<leader>th2", "<cmd>ToggleTerm 2 direction=horizontal size=25<cr>", desc = "Horizontal Terminal 2" },
    { "<leader>tv2", "<cmd>ToggleTerm 2 direction=vertical size=80<cr>", desc = "Vertical Terminal 2" },
    { "<leader>tf3", "<cmd>ToggleTerm 3 direction=float<cr>", desc = "Float Terminal 3" },
    { "<leader>th3", "<cmd>ToggleTerm 3 direction=horizontal size=15<cr>", desc = "Horizontal Terminal 3" },
    { "<leader>tv3", "<cmd>ToggleTerm 3 direction=vertical size=80<cr>", desc = "Vertical Terminal 3" },
    { "<leader>tf4", "<cmd>ToggleTerm 4 direction=float<cr>", desc = "Float Terminal 4" },
    { "<leader>th4", "<cmd>ToggleTerm 4 direction=horizontal size=15<cr>", desc = "Horizontal Terminal 4" },
    { "<leader>tv4", "<cmd>ToggleTerm 4 direction=vertical size=80<cr>", desc = "Vertical Terminal 4" },   
    { "<leader>tf5", "<cmd>ToggleTerm 5 direction=float<cr>", desc = "Float Terminal 5" },
    { "<leader>th5", "<cmd>ToggleTerm 5 direction=horizontal size=15<cr>", desc = "Horizontal Terminal 5" },
    { "<leader>tv5", "<cmd>ToggleTerm 5 direction=vertical size=80<cr>", desc = "Vertical Terminal 5" },
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
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = "curved",
      winblend = 0,
    },
    on_open = function(term)
        vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<Esc>', [[<C-\><C-n>]], {noremap = true, silent = true})
    end,
  },
}
