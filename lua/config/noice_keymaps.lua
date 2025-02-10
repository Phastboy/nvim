local M = {}

function M.setup()
  vim.keymap.set("n", "<leader>nl", function()
    require("noice").cmd("last")
  end, { desc = "Noice Last Message" })

  vim.keymap.set("n", "<leader>nh", function()
    require("noice").cmd("history")
  end, { desc = "Noice History" })

  vim.keymap.set("n", "<leader>na", function()
    require("noice").cmd("all")
  end, { desc = "Noice All" })

  vim.keymap.set("n", "<leader>nd", function()
    require("noice").cmd("dismiss")
  end, { desc = "Dismiss All Notifications" })
end

return M
