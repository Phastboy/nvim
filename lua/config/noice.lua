local M = {}

function M.setup()
  local keymaps=require("config.noice_keymaps")
  require("noice").setup({
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      format = {
        cmdline = { pattern = "^:", icon = " ", lang = "vim" },
        search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
        search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
      },
    },
    messages = {
      enabled = true,
      view = "notify",
      view_error = "notify",
      view_warn = "notify",
    },
    popupmenu = {
      enabled = true,
      backend = "nui",
    },
    notify = {
      enabled = true,
      view = "notify",
    },
    lsp = {
      progress = {
        enabled = true,
        format = "lsp_progress",
        format_done = "lsp_progress_done",
        throttle = 1000 / 30,
      },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      lsp_doc_border = true,
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          kind = "",
          find = "written",
        },
        opts = { skip = true },
      },
      {
        filter = { event = "msg_show", find = "%d+L, %d+B" },
        opts = { skip = true },
      },
    },
  })

  -- Load keymaps from separate file
  require("config.noice_keymaps").setup()
end

return M
