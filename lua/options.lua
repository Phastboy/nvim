require("nvchad.options")

local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.cursorlineopt = "both"

-- Undo
opt.undofile = true
opt.undodir = vim.fn.expand("~/.undodir")

-- Completion
opt.completeopt = "menu,menuone,noselect"
opt.pumheight = 10

-- File caching
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Track performance metrics
vim.api.nvim_create_user_command("PerfReport", function()
	local stats = require("lazy").stats()
	local report = string.format("Startup: %dms (Loaded %d/%d plugins)", stats.startuptime, stats.loaded, stats.count)
	print(report)
end, {})
