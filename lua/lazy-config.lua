-- ~/.config/nvim/lua/lazy.lua

-- Automatically install lazy.nvim if not present.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Use the latest stable release.
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure lazy.nvim with your plugin specs
require("lazy").setup({
  spec = {
    { import = "plugins" },         -- load plugins from lua/plugins/init.lua (and submodules)
    { import = "plugins.custom" },  -- load any custom plugins from lua/plugins/custom/
  },
  defaults = {
    lazy = false,  -- set lazy loading on by default if you prefer, e.g., lazy = true
  },
  install = { colorscheme = { "gruvbox" } },  -- auto-install a colorscheme if desired
  checker = { enabled = true },  -- automatically check for plugin updates
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
