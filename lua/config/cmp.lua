local M = {}

function M.setup()
	local cmp = require("cmp")
	local luasnip = require("luasnip")
	local npairs = require("nvim-autopairs")

	-- Load friendly snippets
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
			{ name = "luasnip" }, -- Add luasnip source
			{ name = "buffer" },
			{ name = "path" },
		}),
		formatting = {
			format = require("lspkind").cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
				ellipsis_char = "...",
			}),
		},
		experimental = {
			ghost_text = true,
		},
	})

	-- Enable command-line completions
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})
end

return M
