local M = {}

function M.setup()
	local bufferline = require("bufferline")

	bufferline.setup({
		options = {
			mode = "buffers",
			numbers = "none",
			sort_by = "extension",
			separator_style = "slant",
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
			close_command = "bdelete! %d",
			right_mouse_command = "bdelete! %d",
			left_mouse_command = "buffer %d",
			middle_mouse_command = nil,
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
			diagnostics_update_on_event = true,
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
			offsets = {
				{
					filetype = "oil",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center",
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

	-- Load keymaps from a separate file
	require("config.bufferline_keymaps").setup()
end

return M
