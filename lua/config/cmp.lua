local M = {}

function M.setup()
	local cmp = require("cmp")
	local luasnip = require("luasnip")
	local lspkind = require("lspkind")

	-- Load snippets from VS Code
	require("luasnip.loaders.from_vscode").lazy_load()

	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = require("config.cmp_keymaps").set_cmp_keymaps(),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
			{ name = "nvim_lua" },
			{ name = "npm" },
			{ name = "spell" },
			{
				name = "dictionary",
				keyword_length = 2,
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
					luasnip = "[Snip]",
					buffer = "[Buf]",
					path = "[Path]",
					nvim_lua = "[Lua]",
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
