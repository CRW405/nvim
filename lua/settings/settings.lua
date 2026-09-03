-- UI
vim.o.number = true
vim.o.relativenumber = false
vim.o.laststatus = 3
vim.o.cmdheight = 0
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.showmode = true
vim.o.showcmd = false
vim.o.signcolumn = "auto" -- "yes" -- not sure what this actually does
vim.o.scrolloff = 5
vim.o.ruler = false
vim.o.wrap = false
vim.o.linebreak = true
vim.o.background = "dark"
vim.o.foldcolumn = "1"
vim.o.conceallevel = 0
vim.o.list = false

-- CONFIG
vim.o.undofile = true
vim.o.autoread = true
vim.o.confirm = true
vim.o.hidden = true
vim.o.formatoptions = "tcq"
vim.o.virtualedit = "block"
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.timeout = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 1000
vim.o.updatetime = 50
vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
vim.o.spell = false
vim.o.spelllang = "en_us"
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- SEARCH
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.wrapscan = true

-- TABS
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true

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
