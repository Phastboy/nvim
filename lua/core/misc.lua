local set = vim.keymap.set

-- save
set("n", "<leader>w", "<Cmd>w<CR>", { desc = "Save file" })

-- quit
set("n", "<leader>q", "<Cmd>q<CR>", { desc = "Exit file" })

-- save and exit
set("n", "<leader>wq", "<Cmd>wq<CR>", { desc = "Save and Exit file" })

-- show cheat sheet
set("n", "<leader>km", function()
	require("core.keymaps_cheat").show()
end, { desc = "Show Keymaps Cheat Sheet" })
