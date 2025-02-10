local M = {}

function M.setup()
  local oil = require("oil")
  local keymaps = require("config.oil_keymaps") -- Load keymaps separately

  oil.setup({
    default_file_explorer = true,
    keymaps = keymaps, -- Apply keymaps
    columns = { "icon" },
    buf_options = {
      buflisted = false,
      bufhidden = "hide",
    },
    win_options = {
      wrap = false,
      signcolumn = "no",
      cursorcolumn = false,
      foldcolumn = "0",
      spell = false,
      list = false,
      conceallevel = 3,
      concealcursor = "nvic",
    },
    float = {
      padding = 2,
      border = "rounded",
    },
    view_options = {
      show_hidden = true,
      natural_order = "fast",
    },
  })
end

return M
