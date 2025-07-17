return {
  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" },
    opts = {},
  },
  -- Tabla de contenidos
  {
    "mzlogin/vim-markdown-toc",
    ft = { "markdown" },
    opts = {},
  },
  -- Zettelkasten/Notas
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {},
  },
} 