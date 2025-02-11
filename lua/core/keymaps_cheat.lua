local M = {}

M.keymaps = {
	-- File Operations
	File = {
		["<leader>w"] = "Save file",
		["<leader>q"] = "Exit file",
		["<leader>wq"] = "Save and Exit file",
	},

	-- Buffer Management
	Buffer = {
		["<leader>bp"] = "Toggle pin",
		["<leader>bP"] = "Delete non-pinned buffers",
		["<leader>bo"] = "Delete other buffers",
		["<leader>br"] = "Delete buffers to the right",
		["<leader>bl"] = "Delete buffers to the left",
		["<leader>bd"] = "Delete buffer",
	},

	-- Tab Navigation
	Tabs = {
		["<Tab>"] = "Next tab",
		["<S-Tab>"] = "Previous tab",
	},

	-- Git Integration
	Git = {
		["<leader>gc"] = "Git Commits",
		["<leader>gs"] = "Git Status",
		["<leader>hs"] = "Stage hunk",
		["<leader>hr"] = "Reset hunk",
		["<leader>hS"] = "Stage buffer",
		["<leader>hu"] = "Undo stage",
		["<leader>hR"] = "Reset buffer",
		["<leader>hp"] = "Preview hunk",
		["<leader>hb"] = "Blame line",
		["<leader>hd"] = "Diff against index",
		["<leader>gb"] = "Toggle Git Blame",
	},

	-- Code Navigation (LSP)
	LSP = {
		["gd"] = "Goto Definition",
		["gr"] = "Find References",
		["K"] = "Hover Docs",
		["<leader>rn"] = "Rename Symbol",
		["<leader>ca"] = "Code Actions",
	},

	-- Telescope (Search)
	Search = {
		["<leader>ff"] = "Find Files",
		["<leader>fg"] = "Live Grep",
		["<leader>fb"] = "Find Buffers",
		["<leader>fh"] = "Help Tags",
		["<leader>fr"] = "Recent Files",
		["<C-e>"] = "File Browser",
	},

	-- UI & Miscellaneous
	UI = {
		["<leader>tt"] = "Cycle Themes",
		["<leader>th"] = "Preview Themes",
		["<leader>d"] = "Open Dashboard",
		["<leader>nl"] = "Noice Last Message",
		["<leader>nh"] = "Noice History",
		["<leader>na"] = "Noice All Messages",
		["<leader>nd"] = "Dismiss Noice Notifications",
	},

	-- Terminal
	Terminal = {
		["<C-t>"] = "Toggle Terminal",
	},

	-- Multi-cursor
	MultiCursor = {
		["<leader>n"] = "Match add cursor forward",
		["<leader>s"] = "Match skip cursor forward",
		["<leader>N"] = "Match add cursor backward",
		["<leader>S"] = "Match skip cursor backward",
		["<leader>A"] = "Add cursors for all matches",
		["<left>"] = "Next cursor",
		["<right>"] = "Previous cursor",
		["<leader>x"] = "Delete current cursor",
		["<C-q>"] = "Toggle cursors",
	},
}

-- Function to display keymaps in a floating window
function M.show()
	local buf = vim.api.nvim_create_buf(false, true)
	local lines = {}

	for section, mappings in pairs(M.keymaps) do
		table.insert(lines, "### " .. section .. " ###")
		for k, v in pairs(mappings) do
			table.insert(lines, string.format("%-10s -> %s", k, v))
		end
		table.insert(lines, "") -- Add space between sections
	end

	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

	local width = math.max(40, vim.api.nvim_win_get_width(0) - 20)
	local height = math.min(#lines + 2, vim.api.nvim_win_get_height(0) - 5)

	local opts = {
		relative = "editor",
		width = width,
		height = height,
		col = math.floor((vim.api.nvim_win_get_width(0) - width) / 2),
		row = math.floor((vim.api.nvim_win_get_height(0) - height) / 2),
		anchor = "NW",
		style = "minimal",
		border = "rounded",
	}

	local win = vim.api.nvim_open_win(buf, true, opts)
	vim.api.nvim_buf_set_keymap(buf, "n", "q", "<Cmd>close<CR>", { noremap = true, silent = true })
end

return M
