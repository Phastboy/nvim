local M = {}

function M.set_lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- Base LSP
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

	-- TS Tools
	vim.keymap.set("n", "<leader>to", "<cmd>TSToolsOrganizeImports<cr>", opts)
	vim.keymap.set("n", "<leader>tr", "<cmd>TSToolsRemoveUnused<cr>", opts)
	vim.keymap.set("n", "<leader>ti", "<cmd>TSToolsAddMissingImports<cr>", opts)
	vim.keymap.set("n", "<leader>tf", "<cmd>TSToolsFixAll<cr>", opts)
end

return M
