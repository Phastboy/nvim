local M = {}

function M.setup()
  local cmp = require("cmp")
  local lspkind = require("lspkind")

  cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" }, -- Main LSP completions
      { name = "buffer" },   -- Current buffer words
      { name = "path" },     -- File system paths
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
      ghost_text = true,
    },
  })
end

return M
