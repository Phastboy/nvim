-- lua/init.lua

-- Load core settings first
require("core.settings")
require("core.keymaps")
require("core.autocmds")

-- Then initialize plugin manager
require("lazy-config")
