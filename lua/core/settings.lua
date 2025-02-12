local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
-- vim.cmd([[colorscheme tokyonight]])

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Performance Tweaks
opt.updatetime = 200 -- Speed up CursorHold events
opt.timeoutlen = 300 -- Faster keybindings

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Undo
opt.undofile = true
opt.undodir = vim.fn.expand("~/.undodir")

-- Completion
opt.completeopt = "menu,menuone,noselect"
opt.pumheight = 10

-- Disable spell checking by default
opt.spell = false
opt.spelllang = "en"
opt.spelloptions = "camel"

opt.lazyredraw = false

-- Memory/display limits
opt.synmaxcol = 200
opt.maxmempattern = 2000

-- File caching
opt.swapfile = false
opt.backup = false
opt.writebackup = false
