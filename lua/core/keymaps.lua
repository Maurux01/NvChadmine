local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Example custom keymaps
map("n", "<leader>xf", ":Telescope find_files<CR>", opts)
map("n", "<leader>xg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>xb", ":Telescope buffers<CR>", opts)

-- Screenshot de código con Silicon
map("n", "<leader>ss", ":Silicon<CR>", { desc = "Screenshot de código (Silicon)" })

-- Placeholder para grabar video (requiere integración externa)
map("n", "<leader>vv", function()
  vim.notify("Configura tu grabador de video externo aquí", vim.log.levels.INFO)
end, { desc = "Grabar video (externo)" })

-- LazyGit
map("n", "<leader>lg", ":LazyGit<CR>", { desc = "Abrir LazyGit" })

-- Live Server
map("n", "<leader>ls", ":LiveServerStart<CR>", { desc = "Iniciar Live Server" })
map("n", "<leader>le", ":LiveServerStop<CR>", { desc = "Detener Live Server" })

-- Ver errores de línea (diagnósticos LSP)
map("n", "<leader>xx", ":Telescope diagnostics<CR>", { desc = "Ver errores de línea (diagnósticos)" })

-- Selección mejorada en modo visual
map("n", "<leader>a", "ggVG", { desc = "Seleccionar todo el archivo" })
map("n", "<leader>l", "V", { desc = "Seleccionar línea actual" })

-- Copiar y pegar mejorado
map("v", "<leader>y", '"+y', { desc = "Copiar al portapapeles del sistema" })
map("n", "<leader>Y", '"+yg_', { desc = "Copiar línea al portapapeles del sistema" })
map("n", "<leader>y", '"+y', { desc = "Copiar al portapapeles del sistema" })
map("n", "<leader>p", '"+p', { desc = "Pegar desde portapapeles del sistema" })
map("n", "<leader>P", '"+P', { desc = "Pegar antes desde portapapeles del sistema" })

-- Yanky (historial de yank)
map("n", "<leader>n", "<Plug>(YankyCycleForward)", { desc = "Siguiente en historial" })
map("n", "<leader>N", "<Plug>(YankyCycleBackward)", { desc = "Anterior en historial" })

-- Debugging (nvim-dap)
map("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { desc = "Continue debugging" })
map("n", "<leader>ds", ":lua require'dap'.step_over()<CR>", { desc = "Step over" })
map("n", "<leader>di", ":lua require'dap'.step_into()<CR>", { desc = "Step into" })
map("n", "<leader>do", ":lua require'dap'.step_out()<CR>", { desc = "Step out" })
map("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { desc = "Open debug REPL" })

-- Testing (neotest)
map("n", "<leader>tt", ":lua require('neotest').run.run()<CR>", { desc = "Run test" })
map("n", "<leader>tf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run test file" })
map("n", "<leader>ta", ":lua require('neotest').run.attach()<CR>", { desc = "Attach to test" })
map("n", "<leader>to", ":lua require('neotest').output.open()<CR>", { desc = "Open test output" })

-- Git avanzado
map("n", "<leader>gb", ":GitBlameToggle<CR>", { desc = "Toggle git blame" })
map("n", "<leader>gc", ":GitConflictListQf<CR>", { desc = "Show git conflicts" })

-- Gestión de proyectos
map("n", "<leader>pp", ":Telescope projects<CR>", { desc = "Open projects" })

-- Refactoring
map("v", "<leader>re", ":lua require('refactoring').refactor('Extract Function')<CR>", { desc = "Extract function" })
map("v", "<leader>rv", ":lua require('refactoring').refactor('Extract Variable')<CR>", { desc = "Extract variable" })
map("n", "<leader>ri", ":lua require('refactoring').refactor('Inline Variable')<CR>", { desc = "Inline variable" })

-- Formateo manual
map("n", "<leader>fm", ":Format<CR>", { desc = "Formatear archivo" })

-- Acceso rápido a herramientas
map("n", "<leader>q", ":qa<CR>", { desc = "Cerrar Neovim" })
map("n", "<leader>m", ":Mason<CR>", { desc = "Abrir Mason" })
map("n", "<leader>z", ":Lazy<CR>", { desc = "Abrir Lazy" })
