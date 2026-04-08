vim.g.copilot_enabled = 0
-- vim.g.copilot_no_tab_map = true

return {
	"github/copilot.vim",
	event = "InsertEnter",
	config = function()
		-- vim.keymap.set("i", "<C-Space>", "<Plug>(copilot-suggest)", { desc = "Trigger Copilot Suggest" })
		-- vim.keymap.set("i", "<C-Tab>", "<Plug>(copilot-next)", { desc = "Next Copilot Suggestion" })
		-- vim.keymap.set("i", "<C-S-Tab>", "<Plug>(copilot-previous)", { desc = "Previous Copilot Suggestion" })
		-- vim.keymap.set(
		-- 	"i",
		-- 	"<C-S-Tab>",
		-- 	"<Plug>(copilot-accept)",
		-- 	{ desc = "Accept Copilot Suggestion", remap = false, silent = true }
		-- )

		vim.keymap.set("n", "<leader>ct", function()
			if vim.g.copilot_enabled == 1 then
				vim.cmd("Copilot disable")
				vim.notify("Copilot Suggestions Disabled.", vim.log.levels.INFO)
			else
				vim.cmd("Copilot enable")
				vim.notify("Copilot Suggestions Enabled.", vim.log.levels.INFO)
			end
		end, { desc = "Toggle Copilot" })
	end,
}
