return {
	"github/copilot.vim",
	event = "InsertEnter",
	vim.keymap.set("i", "<C-Space>", "<Plug>(copilot-suggest)", { desc = "Trigger Copilot Suggest" }),

	vim.keymap.set("n", "<leader>ct", function()
		if vim.g.copilot_enabled == 1 then
			vim.cmd("Copilot disable")
			vim.notify("Copilot Suggestions Disabled.", vim.log.levels.INFO)
		else
			vim.cmd("Copilot enable")
			vim.notify("Copilot Suggestions Enabled.", vim.log.levels.INFO)
		end
	end, { desc = "Toggle Copilot" }),
}
