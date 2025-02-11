local M = {}

function M.setup()
	local bufferline = require("bufferline")

	bufferline.setup({
		options = {
			mode = "buffers",
			numbers = "ordinal",
			close_command = "Bdelete! %d",
			right_mouse_command = "Bdelete! %d",
			left_mouse_command = "buffer %d",
			middle_mouse_command = nil,
			indicator = { style = "icon", icon = "▎" },
			buffer_close_icon = "󰅖",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			max_name_length = 18,
			max_prefix_length = 15,
			truncate_names = true,
			persist_buffer_sort = true,
			enforce_regular_tabs = false,
			always_show_bufferline = true,
			show_buffer_close_icons = true,
			show_close_icon = false,
			color_icons = true,
			diagnostics = "nvim_lsp",
			diagnostics_update_in_insert = false,
			offsets = {
				{
					filetype = "oil",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "left",
				},
			},
			groups = {
				options = {
					toggle_hidden_on_enter = true,
				},
				items = {
					{
						name = "Tests",
						matcher = function(buf)
							return buf.name:match("%.test%.") or buf.name:match("%.spec%.")
						end,
					},
					{
						name = "Docs",
						matcher = function(buf)
							return buf.name:match("%.md$") or buf.name:match("%.txt$")
						end,
					},
				},
			},
		},
	})

	-- Keymaps
	vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle pin" })
	vim.keymap.set("n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", { desc = "Delete non-pinned" })
	vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Delete others" })
	vim.keymap.set("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", { desc = "Delete to the right" })
	vim.keymap.set("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", { desc = "Delete to the left" })
	vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
	vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
end

return M
