-- vim.api.nvim_set_keymap("MODE", "KEY", "ACTION")

-- LEADER
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- DESCRIPTIONS
vim.keymap.set("n", "<leader>c", "", { desc = "Code" })
vim.keymap.set("n", "<leader>f", "", { desc = "Find" })
vim.keymap.set("n", "<leader>u", "", { desc = "UI" })
vim.keymap.set("n", "<leader>t", "", { desc = "Term" })
vim.keymap.set("n", "<leader>w", "", { desc = "Window" })
vim.keymap.set("n", "<leader>b", "", { desc = "Tab" })
vim.keymap.set("n", "<leader>tf", "", { desc = "Float" })
vim.keymap.set("n", "<leader>tv", "", { desc = "Vertical" })
vim.keymap.set("n", "<leader>th", "", { desc = "Horizontal" })
vim.keymap.set("n", "<leader>a", "", { desc = "AI" })
vim.keymap.set("n", "<leader>g", "", { desc = "Git" })
vim.keymap.set("n", "<leader>s", "", { desc = "Search" })

-- WINDOW
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>ws", "<cmd>split<CR>", { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Delete window" })
vim.keymap.set("n", "<leader>wo", "<cmd>only<CR>", { desc = "Close other windows" })
vim.keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Equal window sizes" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- MASON
vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { desc = "Mason" }) -- open mason

-- TUI ESC
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function(args)
		local buf = args.buf
		-- in terminal mode, map Ctrl-Q to send Esc to the running program
		vim.keymap.set("t", "<C-q>", "<Esc>", {
			buffer = buf,
			noremap = true,
			silent = true,
		})
	end,
})
