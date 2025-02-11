local M = {}

function M.setup(mc)
	local set = vim.keymap.set

	-- Add or skip a new cursor by matching word/selection.
	set({ "n", "v" }, "<leader>n", function()
		mc.matchAddCursor(1)
	end, { desc = "Match add cursor forward" })
	set({ "n", "v" }, "<leader>s", function()
		mc.matchSkipCursor(1)
	end, { desc = "Match skip cursor forward" })
	set({ "n", "v" }, "<leader>N", function()
		mc.matchAddCursor(-1)
	end, { desc = "Match add cursor backward" })
	set({ "n", "v" }, "<leader>S", function()
		mc.matchSkipCursor(-1)
	end, { desc = "Match skip cursor backward" })

	-- Add all matches in the document.
	set({ "n", "v" }, "<leader>A", mc.matchAllAddCursors, { desc = "Add cursors for all matches" })

	-- Rotate through cursors.
	set({ "n", "v" }, "<left>", mc.nextCursor, { desc = "Next cursor" })
	set({ "n", "v" }, "<right>", mc.prevCursor, { desc = "Previous cursor" })

	-- Delete the main cursor.
	set({ "n", "v" }, "<leader>x", mc.deleteCursor, { desc = "Delete current cursor" })

	-- Toggle cursors with <C-q>.
	set({ "n", "v" }, "<c-q>", mc.toggleCursor, { desc = "Toggle cursors" })
end

return M
