return {
	"jbyuki/venn.nvim",
	config = function()
		function _G.Toggle_venn()
			local venn_enabled = vim.inspect(vim.b.venn_enabled)
			if venn_enabled == "nil" then
				vim.b.venn_enabled = true
				vim.cmd([[setlocal ve=all]])
				-- draw a line on HJKL keystrokes
				vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
				vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
				vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
				vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
				-- draw with arrow keys
				vim.api.nvim_buf_set_keymap(0, "n", "<S-Down>", "<C-v>j:VBox<CR>", { noremap = true })
				vim.api.nvim_buf_set_keymap(0, "n", "<S-Up>", "<C-v>k:VBox<CR>", { noremap = true })
				vim.api.nvim_buf_set_keymap(0, "n", "<S-Right>", "<C-v>l:VBox<CR>", { noremap = true })
				vim.api.nvim_buf_set_keymap(0, "n", "<S-Left>", "<C-v>h:VBox<CR>", { noremap = true })
				-- draw a box by pressing "f" with visual selection
				vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
			else
				vim.cmd([[setlocal ve=]])
				vim.api.nvim_buf_del_keymap(0, "n", "J")
				vim.api.nvim_buf_del_keymap(0, "n", "K")
				vim.api.nvim_buf_del_keymap(0, "n", "L")
				vim.api.nvim_buf_del_keymap(0, "n", "H")
				vim.api.nvim_buf_del_keymap(0, "v", "f")
				vim.api.nvim_buf_del_keymap(0, "n", "<S-Down>")
				vim.api.nvim_buf_del_keymap(0, "n", "<S-Up>")
				vim.api.nvim_buf_del_keymap(0, "n", "<S-Right>")
				vim.api.nvim_buf_del_keymap(0, "n", "<S-Left>")
				vim.b.venn_enabled = nil
			end
		end
		vim.api.nvim_set_keymap("n", "<leader>v", ":lua Toggle_venn()<CR>", { noremap = true, silent = true })
	end,
}
