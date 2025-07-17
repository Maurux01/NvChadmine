return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "core.keymaps"
    end,
  },

  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "",
            "",
            "",
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██║ ███╗   ███╗",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
            "",
            "",
          },
          center = {
            {
              icon = "  ",
              desc = "Find File",
              group = "Telescope",
              action = "Telescope find_files",
              key = "f",
            },
            {
              icon = "  ",
              desc = "Recent Files",
              group = "Telescope",
              action = "Telescope oldfiles",
              key = "r",
            },
            {
              icon = "  ",
              desc = "Find Word",
              group = "Telescope",
              action = "Telescope live_grep",
              key = "g",
            },
            {
              icon = "⚙️  ",
              desc = "Themes",
              group = "NvChad",
              action = "Telescope themes",P
              key = "t",
            },
            {
              icon = "  ",
              desc = "New File",
              group = "Default",
              action = "enew",
              key = "e",
            },
            {
              icon = "  ",
              desc = "Quit",
              group = "Default",
              action = "qa",
              key = "q",
            },
          },
          footer = {},
        },
      })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },

  -- NvimTree
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      renderer = {
        icons = {
          show = {
            folder = false,
            folder_arrow = false,
          },
        },
      },
    },
  },

  -- WhichKey
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
