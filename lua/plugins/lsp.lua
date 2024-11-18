return {
    {
      "neovim/nvim-lspconfig",
      event = "BufRead",
      config = function()
        require('lspconfig').tsserver.setup{}
      end
    },
    {
      "williamboman/mason.nvim",
      event = "BufRead",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      event = "BufRead",
      config = function()
        require("mason-lspconfig").setup()
      end
    },
  }