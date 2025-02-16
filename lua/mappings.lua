require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>q", "<Cmd>q<CR>", { desc = "Exit file" })
map("n", "<leader>wq", "<Cmd>wq<CR>", { desc = "Save and Exit file" })

map("n", "<leader>dm", "<Cmd>Neogen<CR>", { desc = "Generate module docs" })

map("n", "<leader>lp", function()
	require("lazy").profile()
end, { desc = "Lazy Profile" })

map("n", "K", vim.lsp.buf.hover, { desc = "Show Documentation" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
map("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })

map({ "n", "i" }, "<C-s>", "<cmd> w <cr>")
