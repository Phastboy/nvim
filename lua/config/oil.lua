local M = {}

function M.setup()
  require("oil").setup({
    default_file_explorer = true,
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
      max_width = 50,
      max_height = 30,
    },
    view_options = {
      show_hidden = true,
    },
  })
  
  -- Add toggle shortcut
  vim.keymap.set("n", "<leader>o", require("config.oil_toggle").toggle, {
    desc = "Toggle Oil File Explorer"
  })
end

return M
