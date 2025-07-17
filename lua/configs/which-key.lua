return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
      ["<leader>f"] = { name = "+file" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>l"] = { name = "+lsp" },
      ["<leader>d"] = { name = "+debug" },
      ["<leader>t"] = { name = "+test" },
      ["<leader>r"] = { name = "+refactor" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register({
      -- Acceso rápido
      ["<leader>q"] = { "Cerrar Neovim" },
      ["<leader>m"] = { "Abrir Mason" },
      ["<leader>z"] = { "Abrir Lazy" },
      
      -- Navegación
      ["<leader>x"] = { name = "+telescope" },
      ["<leader>p"] = { name = "+projects" },
      
      -- Desarrollo
      ["<leader>s"] = { name = "+screenshot" },
      ["<leader>v"] = { name = "+video" },
      ["<leader>l"] = { name = "+live-server" },
      
      -- Debugging
      ["<leader>d"] = { name = "+debug" },
      
      -- Testing
      ["<leader>t"] = { name = "+test" },
      
      -- Git
      ["<leader>g"] = { name = "+git" },
      
      -- Refactoring
      ["<leader>r"] = { name = "+refactor" },
      
      -- Formateo
      ["<leader>f"] = { name = "+format" },
      
      -- Yank
      ["<leader>n"] = { name = "+yank-history" },
    })
  end,
} 