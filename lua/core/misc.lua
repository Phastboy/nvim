local set = vim.keymap.set

set("n", "<C-s>", "<Cmd>w<CR>", { desc = "Save file" })
set("n", "<leader>q", "<Cmd>q<CR>", { desc = "Exit file" })
set("n", "<leader>wq", "<Cmd>wq<CR>", { desc = "Save and Exit file" })

-- Track performance metrics
vim.api.nvim_create_user_command("PerfReport", function()
	local stats = require("lazy").stats()
	local report = string.format("Startup: %dms (Loaded %d/%d plugins)", stats.startuptime, stats.loaded, stats.count)
	print(report)
end, {})
set("n", "<leader>lp", function()
	require("lazy").profile()
end, { desc = "Lazy Profile" })

set("n", "K", vim.lsp.buf.hover, { desc = "Show Documentation" })
set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
