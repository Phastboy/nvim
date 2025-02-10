return {
  {
    "windwp/nvim-autopairs", -- The plugin for auto-closing pairs
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,  -- Enable treesitter integration for better context awareness
      })
    end,
  },
}
