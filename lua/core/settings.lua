local opt = vim.opt
local g = vim.g

-- UI
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.cursorline = true -- Highlight the current line
opt.termguicolors = true -- Enable 24-bit RGB colors

-- Tabs & Indentation
opt.tabstop = 2 -- Number of spaces a tab counts for
opt.shiftwidth = 2 -- Number of spaces for autoindent
opt.expandtab = true -- Convert tabs to spaces
opt.smartindent = true -- Enable smart indentation

-- Searching
opt.ignorecase = true -- Case insensitive searching
opt.smartcase = true -- Case-sensitive if uppercase present
opt.hlsearch = false -- Don't highlight search results

-- Splits
opt.splitright = true -- Open vertical splits to the right
opt.splitbelow = true -- Open horizontal splits below

-- Performance
opt.lazyredraw = true -- Only redraw when needed
opt.updatetime = 300 -- Faster completion
opt.timeoutlen = 500 -- Faster mappings

-- undo

opt.undolevels = 10000 -- Max undo levels
opt.undoreload = 10000 -- Max lines to save for undo

if vim.fn.has("persistent_undo") == 1 then
	local target_path = vim.fn.expand("~/.undodir")

	-- Use double slash for versioned undo files
	target_path = target_path .. "//"

	if vim.fn.isdirectory(target_path) == 0 then
		vim.fn.mkdir(target_path, "p", 0700)
	end

	vim.o.undodir = target_path
	vim.o.undofile = true
end
