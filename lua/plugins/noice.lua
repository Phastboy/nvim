return {
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      -- Load keymaps first, then main config
      require("config.noice_keymaps").setup()
      require("config.noice").setup()
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        timeout = 3000,
        background_colour = "#1a1b26",
        render = "minimal",
      })
    end,
  },
}
