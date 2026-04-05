-- UI
vim.opt.nu = true -- line number
vim.opt.relativenumber = false -- relative line number
vim.opt.termguicolors = true -- enable 24-bit RGB colors
vim.opt.cursorline = true -- highlight under cursor
-- vim.opt.splitbelow = true -- open split
-- vim.opt.splitright = true -- open split
-- vim.opt.signcolumn = "yes" -- column
-- vim.opt.colorcolumn = "" -- column
vim.opt.showmode = true -- mode hint

-- TOOLS
vim.opt.spell = true -- spelling
vim.opt.spelllang = "en_us" -- spelling language
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- ???
vim.opt.mouse = "a" -- allow the mouse to be used in nvim

-- SEARCH
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- search as we type
vim.opt.ignorecase = true -- ignore default case checking
vim.opt.smartcase = true -- stop ignoring if uppercase entered, eg. a->[a,A] A->[A]

-- TABS
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- ETC
vim.opt.scrolloff = 8 -- 8 line margin when vertically scrolling
vim.opt.updatetime = 50 -- set time between updates in ms

-- THEME PERSISTENCE
local theme_file = vim.fn.stdpath("data") .. "/theme.txt"

local function load_theme()
	local f = io.open(theme_file, "r")
	if f then
		local theme = f:read("*l")
		f:close()
		if theme and theme ~= "" then
			pcall(vim.cmd.colorscheme, theme)
			return
		end
	end
	pcall(vim.cmd.colorscheme, "tokyonight") -- default fallback
end

local function save_theme()
	local f = io.open(theme_file, "w")
	if f then
		f:write(vim.g.colors_name or "")
		f:close()
	end
end

-- Load theme AFTER plugins are loaded
vim.api.nvim_create_autocmd("User", {
	pattern = "LazyDone",
	callback = load_theme,
})

-- Save theme when changed
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = save_theme,
})
