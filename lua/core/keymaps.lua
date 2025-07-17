local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Example custom keymaps
map("n", "<leader>xf", ":Telescope find_files<CR>", opts)
map("n", "<leader>xg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>xb", ":Telescope buffers<CR>", opts)
