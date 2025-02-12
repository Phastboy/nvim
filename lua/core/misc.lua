local set = vim.keymap.set

set("n", "<leader>w", "<Cmd>w<CR>", { desc = "Save file" })
set("n", "<leader>q", "<Cmd>q<CR>", { desc = "Exit file" })
set("n", "<leader>wq", "<Cmd>wq<CR>", { desc = "Save and Exit file" })
set("n", "<leader>km", function()
	require("core.keymaps_cheat").show()
end, { desc = "Show Keymaps Cheat Sheet" })
