local M = {}

function M.setup()
	local map = vim.keymap.set
	local opts = { noremap = true, silent = true, desc = "Markdown Preview" }

	map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", opts)
	map("n", "<leader>ms", "<cmd>MarkdownPreview<CR>", { desc = "Start Markdown Preview" })
	map("n", "<leader>me", "<cmd>MarkdownPreviewStop<CR>", { desc = "Stop Markdown Preview" })
end

return M
