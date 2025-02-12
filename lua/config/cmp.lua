local M = {}

function M.setup()
	local cmp = require("cmp")
	local lspkind = require("lspkind")

	cmp.setup({
		mapping = require("config.cmp_keymaps").set_cmp_keymaps(),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "buffer" },
			{ name = "path" },
			{ name = "npm" },
			{ name = "spell" },
			{
				name = "dictionary",
				keyword_length = 2,
				max_item_count = 5,
			},
		}),
		formatting = {
			fields = { "kind", "abbr", "menu" },
			format = lspkind.cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
				ellipsis_char = "...",
				menu = {
					nvim_lsp = "[LSP]",
					buffer = "[Buf]",
					path = "[Path]",
					npm = "[NPM]",
				},
			}),
		},
		window = {
			completion = {
				border = "rounded",
				winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
				col_offset = -3,
				side_padding = 0,
			},
			documentation = {
				border = "rounded",
			},
		},
		experimental = {
			ghost_text = {
				hl_group = "CmpGhostText", -- Ensure this highlight group exists
			},
		},
	})

	-- Command-line completion setup
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = { { name = "buffer" } },
	})
end

return M
