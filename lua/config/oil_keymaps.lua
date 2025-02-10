return {
  ["<CR>"] = "actions.select",
  ["<C-s>"] = { "actions.select", opts = { vertical = true } },
  ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
  ["<C-t>"] = { "actions.select", opts = { tab = true } },
  ["<C-p>"] = "actions.preview",
  ["<C-c>"] = "actions.close",
  ["<C-l>"] = "actions.refresh",
  ["-"] = "actions.parent",
  ["<leader>o"] = "actions.toggle_trash",  -- We'll use this for toggle functionality
}
