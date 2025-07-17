local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Example custom keymaps (originales de NvChad)
map("n", "<leader>xf", ":Telescope find_files<CR>", opts)
map("n", "<leader>xg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>xb", ":Telescope buffers<CR>", opts)

-- Keybinds básicos que no están en which-key
map("n", "<leader>a", "ggVG", { desc = "Seleccionar todo el archivo" })

-- Yanky keybinds específicos (evitando conflicto con n de NvChad)
map("n", "<leader>nn", "<Plug>(YankyCycleForward)", { desc = "Siguiente en historial" })
map("n", "<leader>NN", "<Plug>(YankyCycleBackward)", { desc = "Anterior en historial" })
