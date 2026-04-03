return {
    "github/copilot.vim",
    event = "InsertEnter",
    vim.keymap.set("i", "<C-Space>", '<Plug>(copilot-suggest)', { desc = "Trigger Copilot Suggest" }),

    
}
