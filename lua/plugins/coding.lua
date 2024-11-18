return {
    {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
      },
      config = function()
        local cmp = require'cmp'
        cmp.setup {
          -- nvim-cmp configuration here
        }
      end
    },
    {
      "L3MON4D3/LuaSnip",
      event = "InsertEnter",
      requires = {
        "saadparwaiz1/cmp_luasnip"
      },
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end
    },
  }