local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Example custom keymaps
map("n", "<leader>xf", ":Telescope find_files<CR>", opts)
map("n", "<leader>xg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>xb", ":Telescope buffers<CR>", opts)

-- Screenshot de código con Silicon
vim.keymap.set("n", "<leader>ss", ":Silicon<CR>", { desc = "Screenshot de código (Silicon)" })

-- Placeholder para grabar video (requiere integración externa)
vim.keymap.set("n", "<leader>vv", function()
  vim.notify("Configura tu grabador de video externo aquí", vim.log.levels.INFO)
end, { desc = "Grabar video (externo)" })

-- LazyGit
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", { desc = "Abrir LazyGit" })

-- Live Server
vim.keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", { desc = "Iniciar Live Server" })
vim.keymap.set("n", "<leader>le", ":LiveServerStop<CR>", { desc = "Detener Live Server" })

-- Ver errores de línea (diagnósticos LSP)
vim.keymap.set("n", "<leader>xx", ":Telescope diagnostics<CR>", { desc = "Ver errores de línea (diagnósticos)" })
