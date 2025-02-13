local M = {}

M.themes = {
    "tokyonight",
    "catppuccin",
    "gruvbox",
    "everforest",
    "rose-pine",
}

M.current_index = 1

function M.apply_theme()
    vim.cmd("colorscheme " .. M.themes[M.current_index])
end

function M.next_theme()
    M.current_index = M.current_index % #M.themes + 1
    M.apply_theme()
    print("Switched to: " .. M.themes[M.current_index])
end
vim.keymap.set("n", "<leader>tt", function()
    require("config.theme").next_theme()
end, { desc = "Toggle Theme" })

return M
