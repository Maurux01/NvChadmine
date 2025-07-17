require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- Configuración de debugging con mason-nvim-dap
require("mason-nvim-dap").setup({
  automatic_setup = true,
  handlers = {},
  ensure_installed = {
    "python",
    "node2",
    "delve",
  },
})

-- read :h vim.lsp.config for changing options of lsp servers 
