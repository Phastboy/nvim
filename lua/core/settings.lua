-- lua/core/settings.lua
local opt = vim.opt
local g = vim.g

-- UI
opt.number = true         -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.cursorline = true     -- Highlight the current line
opt.termguicolors = true  -- Enable 24-bit RGB colors

-- Tabs & Indentation
opt.tabstop = 2           -- Number of spaces a tab counts for
opt.shiftwidth = 2        -- Number of spaces for autoindent
opt.expandtab = true      -- Convert tabs to spaces
opt.smartindent = true    -- Enable smart indentation

-- Searching
opt.ignorecase = true     -- Case insensitive searching
opt.smartcase = true      -- Case-sensitive if uppercase present
opt.hlsearch = false      -- Don't highlight search results

-- Splits
opt.splitright = true     -- Open vertical splits to the right
opt.splitbelow = true     -- Open horizontal splits below

-- Performance
opt.lazyredraw = true     -- Only redraw when needed
opt.updatetime = 300      -- Faster completion
opt.timeoutlen = 500      -- Faster mappings
