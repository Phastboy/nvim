local M = {}

function M.setup()
  vim.keymap.set("n", "<leader>tt", function()
    local themes = { "habamax", "tokyonight-night", "kanagawa", "catppuccin" }
    local current = vim.g.colors_name or "habamax"
    local next_idx = (vim.tbl_contains(themes, current) 
                     and ((vim.tbl_indexof(themes, current) % #themes) + 1)
                     or 1
    vim.cmd.colorscheme(themes[next_idx])
  end, { desc = "Cycle Themes" })

  vim.keymap.set("n", "<leader>th", "<cmd>Telescope colorscheme<cr>",
    { desc = "Preview Themes" })
end

return M
