vim.g.copilot_enabled = 0

return {
	"folke/sidekick.nvim",
	opts = {
		-- add any options here
		cli = {
			mux = {
				backend = "tmux",
				enabled = false,
			},
		},
	},
	keys = {
		{
			"<tab>",
			function()
				-- if there is a next edit, jump to it, otherwise apply it if any
				if not require("sidekick").nes_jump_or_apply() then
					return "<Tab>" -- fallback to normal tab
				end
			end,
			expr = true,
			desc = "Goto/Apply Next Edit Suggestion",
		},
		{
			"<c-.>",
			function()
				require("sidekick.cli").focus()
			end,
			desc = "Sidekick Focus",
			mode = { "n", "t", "i", "x" },
		},
		{
			"<leader>aa",
			function()
				require("sidekick.cli").toggle()
			end,
			desc = "Sidekick Toggle CLI",
		},
		{
			"<leader>as",
			function()
				require("sidekick.cli").select()
			end,
			-- Or to select only installed tools:
			-- require("sidekick.cli").select({ filter = { installed = true } })
			desc = "Select CLI",
		},
		{
			"<leader>ad",
			function()
				require("sidekick.cli").close()
			end,
			desc = "Detach a CLI Session",
		},
		{
			"<leader>at",
			function()
				require("sidekick.cli").send({ msg = "{this}" })
			end,
			mode = { "x", "n" },
			desc = "Send This",
		},
		{
			"<leader>af",
			function()
				require("sidekick.cli").send({ msg = "{file}" })
			end,
			desc = "Send File",
		},
		{
			"<leader>av",
			function()
				require("sidekick.cli").send({ msg = "{selection}" })
			end,
			mode = { "x" },
			desc = "Send Visual Selection",
		},
		{
			"<leader>ap",
			function()
				require("sidekick.cli").prompt()
			end,
			mode = { "n", "x" },
			desc = "Sidekick Select Prompt",
		},
		-- -- Example of a keybinding to open Claude directly
		-- {
		--   "<leader>ac",
		--   function() require("sidekick.cli").toggle({ name = "claude", focus = true }) end,
		--   desc = "Sidekick Toggle Claude",
		-- },
		{
			"<S-Tab>",
			function()
				local name = vim.api.nvim_buf_get_name(0)
				if name:match("sidekick") then
					return "<CR>"
				end
				return "<S-Tab>"
			end,
			expr = true,
			mode = { "i" },
			desc = "Insert newline (Shift-Tab) in Sidekick messages",
		},
		{
			"<Esc>",
			function()
				local name = vim.api.nvim_buf_get_name(0)
				if name:match("sidekick") then
					vim.cmd("stopinsert")
					require("sidekick.cli").focus()
				else
					local m = vim.fn.mode()
					local keys
					if m == "t" then
						keys = vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true)
					else
						keys = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
					end
					vim.api.nvim_feedkeys(keys, "n", true)
				end
			end,
			mode = { "i", "t" },
			desc = "Exit input and focus Sidekick for navigation/yank",
		},
		-- {
		-- 	"<leader>ct",
		-- 	function()
		-- 		if vim.g.copilot_enabled == 1 then
		-- 			vim.cmd("Copilot disable")
		-- 			vim.notify("Copilot Suggestions Disabled.", vim.log.levels.INFO)
		-- 		else
		-- 			vim.cmd("Copilot enable")
		-- 			vim.notify("Copilot Suggestions Enabled.", vim.log.levels.INFO)
		-- 		end
		-- 	end,
		-- 	desc = "Toggle Copilot",
		-- },
	},
}
