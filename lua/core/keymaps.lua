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

-- Selección mejorada en modo visual
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Seleccionar todo el archivo" })
vim.keymap.set("n", "<leader>l", "V", { desc = "Seleccionar línea actual" })

-- Copiar y pegar mejorado
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copiar al portapapeles del sistema" })
vim.keymap.set("n", "<leader>Y", '"+yg_', { desc = "Copiar línea al portapapeles del sistema" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copiar al portapapeles del sistema" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Pegar desde portapapeles del sistema" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Pegar antes desde portapapeles del sistema" })

-- Debugging (nvim-dap)
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { desc = "Continue debugging" })
vim.keymap.set("n", "<leader>ds", ":lua require'dap'.step_over()<CR>", { desc = "Step over" })
vim.keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>", { desc = "Step into" })
vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_out()<CR>", { desc = "Step out" })
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { desc = "Open debug REPL" })

-- Testing (neotest)
vim.keymap.set("n", "<leader>tt", ":lua require('neotest').run.run()<CR>", { desc = "Run test" })
vim.keymap.set("n", "<leader>tf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run test file" })
vim.keymap.set("n", "<leader>ta", ":lua require('neotest').run.attach()<CR>", { desc = "Attach to test" })
vim.keymap.set("n", "<leader>to", ":lua require('neotest').output.open()<CR>", { desc = "Open test output" })

-- Git avanzado
vim.keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle git blame" })
vim.keymap.set("n", "<leader>gc", ":GitConflictListQf<CR>", { desc = "Show git conflicts" })

-- Gestión de proyectos
vim.keymap.set("n", "<leader>pp", ":Telescope projects<CR>", { desc = "Open projects" })

-- Refactoring
vim.keymap.set("v", "<leader>re", ":lua require('refactoring').refactor('Extract Function')<CR>", { desc = "Extract function" })
vim.keymap.set("v", "<leader>rv", ":lua require('refactoring').refactor('Extract Variable')<CR>", { desc = "Extract variable" })
vim.keymap.set("n", "<leader>ri", ":lua require('refactoring').refactor('Inline Variable')<CR>", { desc = "Inline variable" })

-- Formateo manual
vim.keymap.set("n", "<leader>fm", ":Format<CR>", { desc = "Formatear archivo" })

-- Acceso rápido a herramientas
vim.keymap.set("n", "<leader>q", ":qa<CR>", { desc = "Cerrar Neovim" })
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Abrir Mason" })
vim.keymap.set("n", "<leader>z", ":Lazy<CR>", { desc = "Abrir Lazy" })
