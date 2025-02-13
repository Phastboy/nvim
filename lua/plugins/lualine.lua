return {
  {
    "nvim-lualine/lualine.nvim",
    event="VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.lualine").setup()
    end,
  },
}
