return {
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
} 