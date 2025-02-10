return {
  {
    "stevearc/oil.nvim",
    lazy = false, -- Load immediately since it replaces netrw
    config = function()
      require("config.oil").setup()
    end,
  },
}
