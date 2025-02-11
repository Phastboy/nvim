local M = {}

function M.setup()
	-- Basic undo/redo
	vim.keymap.set("n", "u", "<cmd>undo<CR>", { desc = "Undo" })
	vim.keymap.set("n", "<C-r>", "<cmd>redo<CR>", { desc = "Redo" })

	-- Enhanced navigation
	vim.keymap.set("n", "<leader>uu", "<cmd>UndotreeToggle<CR>", { desc = "Toggle Undo Tree" })
	vim.keymap.set("n", "<leader>uf", "<cmd>UndotreeFocus<CR>", { desc = "Focus Undo Tree" })
	vim.keymap.set("n", "<leader>uh", "<cmd>UndotreeHide<CR>", { desc = "Hide Undo Tree" })
end

return M
