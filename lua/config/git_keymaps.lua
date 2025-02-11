local M = {}

function M.setup()
	-- Safely require gitsigns
	local gs = require("gitsigns")
	local map = vim.keymap.set

	-- GitSigns Keymaps
	map("n", "]c", function()
		if vim.wo.diff then
			return "]c"
		end
		vim.schedule(function()
			gs.next_hunk()
		end)
		return "<Ignore>"
	end, { expr = true, desc = "Next Git hunk" })

	map("n", "[c", function()
		if vim.wo.diff then
			return "[c"
		end
		vim.schedule(function()
			gs.prev_hunk()
		end)
		return "<Ignore>"
	end, { expr = true, desc = "Prev Git hunk" })

	map("n", "<leader>hs", gs.stage_hunk, { desc = "Stage hunk" })
	map("n", "<leader>hr", gs.reset_hunk, { desc = "Reset hunk" })
	map("v", "<leader>hs", function()
		gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
	end)
	map("v", "<leader>hr", function()
		gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
	end)
	map("n", "<leader>hS", gs.stage_buffer, { desc = "Stage buffer" })
	map("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo stage" })
	map("n", "<leader>hR", gs.reset_buffer, { desc = "Reset buffer" })
	map("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk" })
	map("n", "<leader>hb", function()
		gs.blame_line({ full = true })
	end, { desc = "Blame line" })
	map("n", "<leader>hd", gs.diffthis, { desc = "Diff against index" })

	-- Git Blame Keymap
	map("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "Toggle Git blame" })
end

return M
