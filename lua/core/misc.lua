local set = vim.keymap.set

set("n", "<C-s>", "<Cmd>w<CR>", { desc = "Save file" })
set("n", "<leader>q", "<Cmd>q<CR>", { desc = "Exit file" })
set("n", "<leader>wq", "<Cmd>wq<CR>", { desc = "Save and Exit file" })
set("n", "<leader>lp", function()
	require("lazy").profile()
end, { desc = "Lazy Profile" })
