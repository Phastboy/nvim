local M = {}

function M.setup()
	local mc = require("multicursor-nvim")
	mc.setup()

	local set = vim.keymap.set

	-- Add or skip a new cursor by matching word/selection.
	set({ "n", "v" }, "<leader>nf", function() mc.matchAddCursor(1) end, { desc = "Add cursor forward" })
	set({ "n", "v" }, "<leader>N", function() mc.matchAddCursor(-1) end, { desc = "Add cursor backward" })
	set({ "n", "v" }, "<leader>A", mc.matchAllAddCursors, { desc = "Add cursors for all matches" })
	set({ "n", "v" }, "<c-q>", mc.toggleCursor, { desc = "Toggle cursors" }) -- Quick toggle
end

return M
