return {
  {
    "nvim-telescope/telescope.nvim",
    event="VimEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      require("config.telescope").setup()
    end,
  },
}
