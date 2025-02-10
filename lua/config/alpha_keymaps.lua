-- lua/config/alpha_keymaps.lua
local M = {}

function M.setup()
	vim.api.nvim_set_keymap("n", "<Leader>d", ":Alpha<CR>", {
		noremap = true,
		silent = true,
		desc = "Open Dashboard",
	})
end

return M
