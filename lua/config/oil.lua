local M = {}

function M.setup()
	require("oil").setup({
		view_options = {
			show_hidden = true,
		},
    default_file_explorer = true,
	})

  vim.keymap.set("n", "<leader>o", function()
    require("oil").toggle_float()
end, { desc = "Toggle Oil File Explorer" })
end

return M
