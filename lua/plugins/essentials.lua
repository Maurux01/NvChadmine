return {
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
              action = "Telescope themes",
              key = "t",
            },
            {
              icon = "  ",
              desc = "New File",
              group = "Default",
              action = function()
                vim.cmd("enew")
              end,
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
  -- File Explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  -- Fuzzy Finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- Git Integration
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  -- Terminal Integrado
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
  },
  -- LSP con mason + lspconfig
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    opts = {},
  },
  -- Formatter/Linter
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    opts = {},
  },
  -- Autocompletado
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = {},
  },
  -- Screenshot de código
  {
    "michaelrommel/nvim-silicon",
    cmd = { "Silicon" },
    opts = {},
  },
  -- Comentarios mejorados
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
  -- LazyGit
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  -- Live Server
  {
    "barrett-ruth/live-server.nvim",
    build = "./install.sh",
    config = true,
    cmd = { "LiveServerStart", "LiveServerStop" },
  },
  -- Historial de yank (portapapeles mejorado)
  {
    "gbprod/yanky.nvim",
    opts = {},
    keys = {
      { "<leader>p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Pegar después" },
      { "<leader>P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Pegar antes" },
      { "<leader>gp", "<Plug>(YankyGPutAfter)", mode = { "n", "x" }, desc = "Pegar después (línea)" },
      { "<leader>gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" }, desc = "Pegar antes (línea)" },
      { "<leader>n", "<Plug>(YankyCycleForward)", desc = "Siguiente en historial" },
      { "<leader>N", "<Plug>(YankyCycleBackward)", desc = "Anterior en historial" },
    },
  },
} 