return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            '',
            ' ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
            ' ████╗  ██║██║   ██║██║████╗ ████║',
            ' ██╔██╗ ██║██║   ██║██║██╔████╔██║',
            ' ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
            ' ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
            ' ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
            '',
          },
          center = {
            {
              icon = '  ',
              desc = 'Recently latest session                  ',
              shortcut = 'SPC s l',
              action = 'SessionLoad'
            },
            {
              icon = '  ',
              desc = 'Recently opened files                   ',
              action = 'Telescope oldfiles',
              shortcut = 'SPC f r'
            },
            {
              icon = '  ',
              desc = 'Find  File                              ',
              action = 'Telescope find_files',
              shortcut = 'SPC f f'
            },
            {
              icon = '  ',
              desc ='File Browser                            ',
              action =  'Telescope file_browser',
              shortcut = 'SPC f b'
            },
            {
              icon = '  ',
              desc = 'Find  word                              ',
              action = 'Telescope live_grep',
              shortcut = 'SPC f w'
            },
          },
          footer = {'Do one thing, do it well - Unix Philosophy'}
        }
      }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  },
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require('noice').setup {
        -- noice configuration here
      }
    end,
    requires = {
      {"MunifTanjim/nui.nvim"},
      {"rcarriga/nvim-notify"}
    }
  },
  {
    "kyazdani42/nvim-web-devicons",
    event = "VimEnter"
  },
}