return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorer (root)" },
    -- { "<leader>E", "<cmd>Neotree toggle reveal<cr>", desc = "Explorer (reveal file)" },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    window = {
      width = 30,
      mappings = {
        ["<space>"] = "none",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<cr>"] = "open",
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
      },
      git_status = {
        symbols = {
          added = "",
          modified = "",
          deleted = "✖",
          renamed = "󰁕",
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
    },
  },
}
