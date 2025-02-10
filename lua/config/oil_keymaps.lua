return {
  ["<CR>"] = "actions.select",
  ["<C-s>"] = { "actions.select", opts = { vertical = true } },
  ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
  ["<C-t>"] = { "actions.select", opts = { tab = true } },
  ["<C-p>"] = "actions.preview",
  ["<C-c>"] = { "actions.close", mode = "n" },
  ["<C-l>"] = "actions.refresh",
  ["-"] = { "actions.parent", mode = "n" },
  vim.keymap.set("n", "<leader>o",
  function()
    require("config.oil_toggle").toggle()
  end,
  {
    desc = "Toggle Oil File Explorer"
  })
}
