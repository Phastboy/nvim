local M = {}

function M.setup()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    defaults = {
      prompt_prefix = "🔍 ",
      selection_caret = " ",
      -- path_display = { "smart" },
      path_display = { "truncate" },
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        },
      },
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },
      file_ignore_patterns = {
        "node_modules",
        ".git",
        ".cache",
        "%.o",
        "%.a",
        "%.out",
        "%.class",
        "%.pdf",
        "%.mkv",
        "%.mp4",
        "%.zip",
      },
      winblend = 0,
      border = {},
      color_devicons = true,
      set_env = { ["COLORTERM"] = "truecolor" },
    },
    extensions = {
      file_browser = {
        theme = "dropdown",
        hijack_netrw = true,
        hidden = true,
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
    },
  })

  -- Load extensions
  telescope.load_extension("file_browser")
  telescope.load_extension("ui-select")
end

return M
