local M = {
	plugin_keys = {},
}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Leader groups.
vim.keymap.set("n", "<leader>c", "", { desc = "Code" })
vim.keymap.set("n", "<leader>f", "", { desc = "Find" })
vim.keymap.set("n", "<leader>u", "", { desc = "UI" })
vim.keymap.set("n", "<leader>t", "", { desc = "Term" })
vim.keymap.set("n", "<leader>w", "", { desc = "Window" })
vim.keymap.set("n", "<leader>b", "", { desc = "Buffer" })
vim.keymap.set("n", "<leader>tf", "", { desc = "Float terminal" })
vim.keymap.set("n", "<leader>tv", "", { desc = "Vertical terminal" })
vim.keymap.set("n", "<leader>th", "", { desc = "Horizontal terminal" })
vim.keymap.set("n", "<leader>a", "", { desc = "AI" })
vim.keymap.set("n", "<leader>g", "", { desc = "Git" })
vim.keymap.set("n", "<leader>s", "", { desc = "Search" })

-- Built-in window commands.
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", { desc = "Neovim: Split vertically" })
vim.keymap.set("n", "<leader>ws", "<cmd>split<CR>", { desc = "Neovim: Split horizontally" })
vim.keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Neovim: Close window" })
vim.keymap.set("n", "<leader>wo", "<cmd>only<CR>", { desc = "Neovim: Close other windows" })
vim.keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Neovim: Equalize windows" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Neovim: Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Neovim: Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Neovim: Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Neovim: Go to right window" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Neovim: Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Neovim: Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Neovim: Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Neovim: Increase window width" })

-- Plugin key specs live here; plugin files refer to them so lazy.nvim still loads on demand.
-- Simple command mappings come before mappings with Lua callbacks.
M.plugin_keys["bufferline.nvim"] = {
	{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Bufferline: Toggle pin" },
	{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Bufferline: Close unpinned buffers" },
	{ "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Bufferline: Close other buffers" },
	{ "<leader>bd", "<Cmd>bdelete<CR>", desc = "Bufferline: Close buffer" },
	{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Bufferline: Previous buffer" },
	{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Bufferline: Next buffer" },
	{ "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Bufferline: Previous buffer" },
	{ "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Bufferline: Next buffer" },
}

M.plugin_keys["neo-tree.nvim"] = {
	{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Neo-tree: Toggle file tree" },
}

M.plugin_keys["telescope.nvim"] = {
	{ "<leader>ut", "<cmd>Telescope colorscheme enable_preview=true<CR>", desc = "Telescope: Pick colorscheme" },
	{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Telescope: Find files" },
	{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Telescope: Search text" },
	{ "<leader>r", "<cmd>Telescope oldfiles<CR>", desc = "Telescope: Recent files" },
}

M.plugin_keys["toggleterm.nvim"] = {
	{ "<c-/>", "<cmd>ToggleTerm dir=%:p:h<cr>", desc = "ToggleTerm: Toggle terminal" },
	{ "<leader>tf1", "<cmd>ToggleTerm 1 dir=%:p:h direction=float<cr>", desc = "ToggleTerm: Float terminal 1" },
	{
		"<leader>th1",
		"<cmd>ToggleTerm 1 dir=%:p:h direction=horizontal size=15<cr>",
		desc = "ToggleTerm: Horizontal terminal 1",
	},
	{
		"<leader>tv1",
		"<cmd>ToggleTerm 1 dir=%:p:h direction=vertical size=80<cr>",
		desc = "ToggleTerm: Vertical terminal 1",
	},
	{ "<leader>tf2", "<cmd>ToggleTerm 2 dir=%:p:h direction=float<cr>", desc = "ToggleTerm: Float terminal 2" },
	{
		"<leader>th2",
		"<cmd>ToggleTerm 2 dir=%:p:h direction=horizontal size=25<cr>",
		desc = "ToggleTerm: Horizontal terminal 2",
	},
	{
		"<leader>tv2",
		"<cmd>ToggleTerm 2 dir=%:p:h direction=vertical size=80<cr>",
		desc = "ToggleTerm: Vertical terminal 2",
	},
	{ "<leader>tf3", "<cmd>ToggleTerm 3 dir=%:p:h direction=float<cr>", desc = "ToggleTerm: Float terminal 3" },
	{
		"<leader>th3",
		"<cmd>ToggleTerm 3 dir=%:p:h direction=horizontal size=15<cr>",
		desc = "ToggleTerm: Horizontal terminal 3",
	},
	{
		"<leader>tv3",
		"<cmd>ToggleTerm 3 dir=%:p:h direction=vertical size=80<cr>",
		desc = "ToggleTerm: Vertical terminal 3",
	},
	{ "<leader>tf4", "<cmd>ToggleTerm 4 dir=%:p:h direction=float<cr>", desc = "ToggleTerm: Float terminal 4" },
	{
		"<leader>th4",
		"<cmd>ToggleTerm 4 dir=%:p:h direction=horizontal size=15<cr>",
		desc = "ToggleTerm: Horizontal terminal 4",
	},
	{
		"<leader>tv4",
		"<cmd>ToggleTerm 4 dir=%:p:h direction=vertical size=80<cr>",
		desc = "ToggleTerm: Vertical terminal 4",
	},
	{ "<leader>tf5", "<cmd>ToggleTerm 5 dir=%:p:h direction=float<cr>", desc = "ToggleTerm: Float terminal 5" },
	{
		"<leader>th5",
		"<cmd>ToggleTerm 5 dir=%:p:h direction=horizontal size=15<cr>",
		desc = "ToggleTerm: Horizontal terminal 5",
	},
	{
		"<leader>tv5",
		"<cmd>ToggleTerm 5 dir=%:p:h direction=vertical size=80<cr>",
		desc = "ToggleTerm: Vertical terminal 5",
	},
}

M.plugin_keys["multicursors.nvim"] = {
	{
		"<Leader>m",
		"<cmd>MCstart<cr>",
		mode = { "v", "n" },
		desc = "Multicursors: Start",
	},
}

M.plugin_keys["windows.nvim"] = {
	{ "<C-w>z", "<cmd>WindowsMaximize<cr>", desc = "Windows: Maximize or restore" },
	{ "<C-w>=", "<cmd>WindowsEqualize<cr>", desc = "Windows: Equalize sizes" },
	{ "<C-w>_", "<cmd>WindowsMaximizeVertically<cr>", desc = "Windows: Maximize height" },
	{ "<C-w>|", "<cmd>WindowsMaximizeHorizontally<cr>", desc = "Windows: Maximize width" },
}

-- Plugin callbacks follow the simpler command-only mappings.
M.plugin_keys["which-key.nvim"] = {
	{
		"<leader>?",
		function()
			require("which-key").show({ global = false })
		end,
		desc = "Which-key: Show local keymaps",
	},
}

M.plugin_keys["sidekick.nvim"] = {
	{
		"<tab>",
		function()
			if not require("sidekick").nes_jump_or_apply() then
				return "<Tab>"
			end
		end,
		expr = true,
		desc = "Sidekick: Jump to or apply next edit",
	},
	{
		"<c-.>",
		function()
			require("sidekick.cli").focus()
		end,
		desc = "Sidekick: Focus CLI",
		mode = { "n", "t", "i", "x" },
	},
	{
		"<leader>aa",
		function()
			require("sidekick.cli").toggle()
		end,
		desc = "Sidekick: Toggle CLI",
	},
	{
		"<leader>as",
		function()
			require("sidekick.cli").select()
		end,
		desc = "Sidekick: Select CLI",
	},
	{
		"<leader>ad",
		function()
			require("sidekick.cli").close()
		end,
		desc = "Sidekick: Close CLI",
	},
	{
		"<leader>at",
		function()
			require("sidekick.cli").send({ msg = "{this}" })
		end,
		mode = { "x", "n" },
		desc = "Sidekick: Send current item",
	},
	{
		"<leader>af",
		function()
			require("sidekick.cli").send({ msg = "{file}" })
		end,
		desc = "Sidekick: Send current file",
	},
	{
		"<leader>av",
		function()
			require("sidekick.cli").send({ msg = "{selection}" })
		end,
		mode = { "x" },
		desc = "Sidekick: Send selection",
	},
	{
		"<leader>ap",
		function()
			require("sidekick.cli").prompt()
		end,
		mode = { "n", "x" },
		desc = "Sidekick: Choose prompt",
	},
	{
		"<S-Tab>",
		function()
			if vim.api.nvim_buf_get_name(0):match("sidekick") then
				return "<CR>"
			end
			return "<S-Tab>"
		end,
		expr = true,
		mode = { "i" },
		desc = "Sidekick: Newline in prompt",
	},
}

M.plugin_keys["snacks.nvim"] = {
	{
		"<leader>/",
		function()
			Snacks.picker.grep()
		end,
		desc = "Snacks: Search text",
	},
	{
		"<leader>:",
		function()
			Snacks.picker.command_history()
		end,
		desc = "Snacks: Command history",
	},
	{
		"<leader>n",
		function()
			Snacks.picker.notifications()
		end,
		desc = "Snacks: Notification history",
	},
	{
		"<leader>fc",
		function()
			Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
		end,
		desc = "Snacks: Find config files",
	},
	{
		"<leader>fG",
		function()
			Snacks.picker.git_files()
		end,
		desc = "Snacks: Find Git files",
	},
	{
		"<leader>fp",
		function()
			Snacks.picker.projects()
		end,
		desc = "Snacks: Find projects",
	},
	{
		"<leader>gb",
		function()
			Snacks.picker.git_branches()
		end,
		desc = "Snacks: Git branches",
	},
	{
		"<leader>gl",
		function()
			Snacks.picker.git_log()
		end,
		desc = "Snacks: Git log",
	},
	{
		"<leader>gL",
		function()
			Snacks.picker.git_log_line()
		end,
		desc = "Snacks: Git log for line",
	},
	{
		"<leader>gs",
		function()
			Snacks.picker.git_status()
		end,
		desc = "Snacks: Git status",
	},
	{
		"<leader>gS",
		function()
			Snacks.picker.git_stash()
		end,
		desc = "Snacks: Git stash",
	},
	{
		"<leader>gd",
		function()
			Snacks.picker.git_diff()
		end,
		desc = "Snacks: Git diff",
	},
	{
		"<leader>gf",
		function()
			Snacks.picker.git_log_file()
		end,
		desc = "Snacks: Git log for file",
	},
	{
		"<leader>gi",
		function()
			Snacks.picker.gh_issue()
		end,
		desc = "Snacks: Open GitHub issues",
	},
	{
		"<leader>gI",
		function()
			Snacks.picker.gh_issue({ state = "all" })
		end,
		desc = "Snacks: All GitHub issues",
	},
	{
		"<leader>gp",
		function()
			Snacks.picker.gh_pr()
		end,
		desc = "Snacks: Open GitHub pull requests",
	},
	{
		"<leader>gP",
		function()
			Snacks.picker.gh_pr({ state = "all" })
		end,
		desc = "Snacks: All GitHub pull requests",
	},
	{
		"<leader>si",
		function()
			Snacks.picker.icons()
		end,
		desc = "Snacks: Find icons",
	},
	{
		"<leader>sj",
		function()
			Snacks.picker.jumps()
		end,
		desc = "Snacks: Find jumps",
	},
	{
		"<leader>sk",
		function()
			Snacks.picker.keymaps()
		end,
		desc = "Snacks: Find keymaps",
	},
	{
		"<leader>sm",
		function()
			Snacks.picker.marks()
		end,
		desc = "Snacks: Find marks",
	},
	{
		"<leader>sM",
		function()
			Snacks.picker.man()
		end,
		desc = "Snacks: Find man pages",
	},
	{
		"<leader>sp",
		function()
			Snacks.picker.lazy()
		end,
		desc = "Snacks: Find plugin specs",
	},
	{
		"<leader>su",
		function()
			Snacks.picker.undo()
		end,
		desc = "Snacks: Undo history",
	},
	{
		"gd",
		function()
			Snacks.picker.lsp_definitions()
		end,
		desc = "Snacks: Find definitions",
	},
	{
		"gai",
		function()
			Snacks.picker.lsp_incoming_calls()
		end,
		desc = "Snacks: Incoming calls",
	},
	{
		"gao",
		function()
			Snacks.picker.lsp_outgoing_calls()
		end,
		desc = "Snacks: Outgoing calls",
	},
	{
		"<leader>ss",
		function()
			Snacks.picker.lsp_symbols()
		end,
		desc = "Snacks: Find document symbols",
	},
	{
		"<leader>sS",
		function()
			Snacks.picker.lsp_workspace_symbols()
		end,
		desc = "Snacks: Find workspace symbols",
	},
}

-- CSVView: field text objects and row/field navigation.
M.csvview_keymaps = {
	-- CSVView: select a field without its delimiter.
	textobject_field_inner = { "if", mode = { "o", "x" } },
	-- CSVView: select a field with its delimiter.
	textobject_field_outer = { "af", mode = { "o", "x" } },
	-- CSVView: move to the next field.
	jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
	-- CSVView: move to the previous field.
	jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
	-- CSVView: move to the next row.
	jump_next_row = { "<Enter>", mode = { "n", "v" } },
	-- CSVView: move to the previous row.
	jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
}

-- Neo-tree: navigation inside the file tree.
M.neotree_window_mappings = {
	-- Neo-tree: leave Space unmapped.
	["<space>"] = "none",
	-- Neo-tree: open the selected item.
	["l"] = "open",
	-- Neo-tree: collapse the selected directory.
	["h"] = "close_node",
	-- Neo-tree: open the selected item.
	["<cr>"] = "open",
}

-- Blink: Ctrl-K toggles signature help while typing.
M.blink_keymap = {
	preset = "super-tab",
	["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
}

-- Plugin command mapping.
vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { desc = "Mason: Open installer" })

-- Scripted and buffer-local mappings.
-- Terminal: send Escape to the terminal program.
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function(args)
		vim.keymap.set("t", "<C-q>", "<Esc>", {
			buffer = args.buf,
			noremap = true,
			silent = true,
			desc = "Terminal: Send Escape",
		})
	end,
})

function M.map_toggleterm_buffer(bufnr)
	vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
		buffer = bufnr,
		noremap = true,
		silent = true,
		desc = "ToggleTerm: Enter normal mode",
	})
end

-- Conform: format the current file.
vim.keymap.set("n", "<leader>cf", function()
	vim.notify("Formatting file...", vim.log.levels.INFO)
	require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
end, { desc = "Conform: Format file" })

-- Conform: format and save all supported files tracked or unignored in the Git project.
vim.keymap.set("n", "<leader>cF", function()
	local root = vim.fs.root(0, ".git")
	if not root then
		vim.notify("Project format requires a Git repository", vim.log.levels.ERROR)
		return
	end

	local output = vim.fn.system({
		"git",
		"-C",
		root,
		"ls-files",
		"-z",
		"--cached",
		"--others",
		"--exclude-standard",
	})
	if vim.v.shell_error ~= 0 then
		vim.notify("Could not list project files with git", vim.log.levels.ERROR)
		return
	end

	local files = vim.split(output, "\1", { trimempty = true })
	local conform = require("conform")
	local index, changed, skipped = 1, 0, 0
	local failures = {}

	local function report()
		local message = ("Project format: %d changed, %d skipped, %d failed"):format(changed, skipped, #failures)
		if #failures > 0 then
			local details = {}
			for i = 1, math.min(#failures, 10) do
				details[i] = failures[i]
			end
			if #failures > #details then
				details[#details + 1] = ("...and %d more"):format(#failures - #details)
			end
			vim.notify(message .. "\n" .. table.concat(details, "\n"), vim.log.levels.ERROR)
		else
			vim.notify(message, vim.log.levels.INFO)
		end
	end

	local function format_next()
		while index <= #files do
			local relative_path = files[index]
			index = index + 1
			local path = vim.fs.joinpath(root, relative_path)
			if vim.fn.filereadable(path) == 0 then
				skipped = skipped + 1
			else
				local bufnr = vim.fn.bufadd(path)
				vim.fn.bufload(bufnr)
				local was_modified = vim.api.nvim_get_option_value("modified", { buf = bufnr })
				if
					vim.api.nvim_get_option_value("filetype", { buf = bufnr }) == ""
					or #conform.list_formatters(bufnr) == 0
				then
					skipped = skipped + 1
				else
					local attempted = conform.format({
						bufnr = bufnr,
						async = true,
						lsp_format = "never",
						quiet = true,
					}, function(err, did_edit)
						if err then
							failures[#failures + 1] = relative_path .. ": " .. tostring(err)
						elseif did_edit or was_modified then
							vim.b[bufnr].project_formatting = true
							local ok, write_error = pcall(vim.api.nvim_buf_call, bufnr, function()
								vim.cmd("silent write")
							end)
							vim.b[bufnr].project_formatting = nil
							if ok then
								changed = changed + 1
							else
								failures[#failures + 1] = relative_path .. ": " .. tostring(write_error)
							end
						else
							skipped = skipped + 1
						end
						format_next()
					end)
					if attempted then
						return
					end
					skipped = skipped + 1
				end
			end
		end
		report()
	end

	format_next()
end, { desc = "Conform: Format project" })

-- Blink and Neovim LSP: automatically show documentation as the cursor moves.
local auto_hover_enabled = false
local auto_hover_generation = 0
local hover_group = vim.api.nvim_create_augroup("AutoLspHover", { clear = true })
local function schedule_hover()
	auto_hover_generation = auto_hover_generation + 1
	local generation = auto_hover_generation
	vim.defer_fn(function()
		if not auto_hover_enabled or generation ~= auto_hover_generation or vim.fn.mode() ~= "n" then
			return
		end
		if #vim.lsp.get_clients({ bufnr = 0, method = "textDocument/hover" }) > 0 then
			vim.lsp.buf.hover({ focusable = false, silent = true })
		end
	end, 400)
end
vim.api.nvim_create_autocmd({ "CursorMoved", "BufEnter" }, {
	group = hover_group,
	callback = function()
		if auto_hover_enabled then
			schedule_hover()
		end
	end,
})
vim.keymap.set("n", "<leader>ch", function()
	auto_hover_enabled = not auto_hover_enabled
	auto_hover_generation = auto_hover_generation + 1
	if auto_hover_enabled then
		schedule_hover()
	end
	vim.notify("Automatic hover docs " .. (auto_hover_enabled and "on" or "off"))
end, { desc = "LSP: Toggle automatic hover docs" })

-- LSP: toggle a manually requested hover description.
local peek_generation = 0
local peek_pending = false
local peek_win
local function toggle_peek()
	if peek_win and vim.api.nvim_win_is_valid(peek_win) then
		vim.api.nvim_win_close(peek_win, true)
		peek_win = nil
		return
	end
	if peek_pending then
		peek_generation = peek_generation + 1
		peek_pending = false
		return
	end

	local bufnr = vim.api.nvim_get_current_buf()
	local win = vim.api.nvim_get_current_win()
	local cursor = vim.api.nvim_win_get_cursor(win)
	if #vim.lsp.get_clients({ bufnr = bufnr, method = "textDocument/hover" }) == 0 then
		return
	end

	peek_generation = peek_generation + 1
	local generation = peek_generation
	peek_pending = true
	vim.lsp.buf_request_all(bufnr, "textDocument/hover", function(client)
		return vim.lsp.util.make_position_params(win, client.offset_encoding)
	end, function(results)
		if generation ~= peek_generation then
			return
		end
		peek_pending = false
		if
			not vim.api.nvim_buf_is_valid(bufnr)
			or not vim.api.nvim_win_is_valid(win)
			or vim.api.nvim_get_current_buf() ~= bufnr
		then
			return
		end
		local current_cursor = vim.api.nvim_win_get_cursor(win)
		if current_cursor[1] ~= cursor[1] or current_cursor[2] ~= cursor[2] then
			return
		end

		local contents = {}
		for _, response in pairs(results) do
			if response.result and response.result.contents then
				vim.list_extend(contents, vim.lsp.util.convert_input_to_markdown_lines(response.result.contents))
			end
		end
		contents = vim.lsp.util.trim_empty_lines(contents)
		if #contents == 0 then
			return
		end

		local _, hover_win = vim.lsp.util.open_floating_preview(contents, "markdown", {
			focusable = false,
		})
		peek_win = hover_win
		vim.api.nvim_create_autocmd("WinClosed", {
			pattern = tostring(hover_win),
			once = true,
			callback = function()
				if peek_win == hover_win then
					peek_win = nil
				end
			end,
		})
	end)
end
vim.keymap.set({ "n", "i", "x" }, "<C-c>", toggle_peek, { desc = "LSP: Peek docs (toggle)" })

-- LSP: show the diagnostic under the cursor.
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "LSP: Show line diagnostics" })

-- Snacks: toggle editor options and UI features.
vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		-- Snacks: toggle spelling.
		Snacks.toggle.option("spell", { name = "Snacks: Spelling" }):map("<leader>us")
		-- Snacks: toggle line wrapping.
		Snacks.toggle.option("wrap", { name = "Snacks: Wrap" }):map("<leader>uw")
		-- Snacks: toggle relative line numbers.
		Snacks.toggle.option("relativenumber", { name = "Snacks: Relative number" }):map("<leader>uL")
		-- Snacks: toggle diagnostics.
		Snacks.toggle.diagnostics():map("<leader>ud")
		-- Snacks: toggle line numbers.
		Snacks.toggle.line_number():map("<leader>ul")
		-- Snacks: toggle concealed text.
		Snacks.toggle
			.option("conceallevel", {
				off = 0,
				on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2,
				name = "Snacks: Conceal",
			})
			:map("<leader>uc")
		-- Snacks: toggle Treesitter highlighting.
		Snacks.toggle.treesitter():map("<leader>uT")
		-- Snacks: toggle dark background.
		Snacks.toggle
			.option("background", { off = "light", on = "dark", name = "Snacks: Dark background" })
			:map("<leader>ub")
		-- Snacks: toggle inlay hints.
		Snacks.toggle.inlay_hints():map("<leader>uh")
		-- Snacks: toggle indent guides.
		Snacks.toggle.indent():map("<leader>ug")
		-- Snacks: toggle inactive-window dimming.
		Snacks.toggle.dim():map("<leader>uD")
	end,
})

return M
