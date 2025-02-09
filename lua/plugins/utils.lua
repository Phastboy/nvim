-- ~/.config/nvim/lua/plugins/custom/utils.lua

return {
  -- For example, a plugin you only want in your custom config:
  { "folke/todo-comments.nvim", config = function()
      require("todo-comments").setup {}
    end,
  },
}
