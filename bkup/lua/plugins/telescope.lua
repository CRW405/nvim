return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ut", "<cmd>Telescope colorscheme enable_preview=true<CR>", desc = "Theme" },
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
        { "<leader>r",  "<cmd>Telescope oldfiles<CR>", desc = "Recent files" },
    }
}
