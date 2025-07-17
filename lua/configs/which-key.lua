return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    
    -- Registrar todos los keybinds personalizados (evitando conflictos con NvChad)
    wk.register({
      -- Acceso rápido
      ["<leader>q"] = { ":qa<CR>", "Cerrar Neovim" },
      ["<leader>m"] = { ":Mason<CR>", "Abrir Mason" },
      ["<leader>z"] = { ":Lazy<CR>", "Abrir Lazy" },
      
      -- Navegación y búsqueda (usando x para evitar conflictos con f)
      ["<leader>x"] = {
        name = "+telescope",
        f = { ":Telescope find_files<CR>", "Buscar archivos" },
        g = { ":Telescope live_grep<CR>", "Búsqueda global" },
        b = { ":Telescope buffers<CR>", "Buffers" },
        x = { ":Telescope diagnostics<CR>", "Diagnósticos" },
      },
      
      -- Proyectos
      ["<leader>p"] = {
        name = "+projects",
        p = { ":Telescope projects<CR>", "Abrir proyectos" },
      },
      
      -- Screenshot y video
      ["<leader>s"] = {
        name = "+screenshot",
        s = { ":Silicon<CR>", "Screenshot de código" },
      },
      
      ["<leader>vv"] = {
        name = "+video",
        v = { function()
          vim.notify("Configura tu grabador de video externo aquí", vim.log.levels.INFO)
        end, "Grabar video" },
      },
      
      -- Live Server (usando l para evitar conflictos)
      ["<leader>l"] = {
        name = "+live-server",
        s = { ":LiveServerStart<CR>", "Iniciar Live Server" },
        e = { ":LiveServerStop<CR>", "Detener Live Server" },
        g = { ":LazyGit<CR>", "LazyGit" },
      },
      
      -- Debugging
      ["<leader>d"] = {
        name = "+debug",
        b = { ":lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint" },
        c = { ":lua require'dap'.continue()<CR>", "Continue" },
        s = { ":lua require'dap'.step_over()<CR>", "Step over" },
        i = { ":lua require'dap'.step_into()<CR>", "Step into" },
        o = { ":lua require'dap'.step_out()<CR>", "Step out" },
        r = { ":lua require'dap'.repl.open()<CR>", "Debug REPL" },
      },
      
      -- Testing
      ["<leader>t"] = {
        name = "+test",
        t = { ":lua require('neotest').run.run()<CR>", "Run test" },
        f = { ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run test file" },
        a = { ":lua require('neotest').run.attach()<CR>", "Attach to test" },
        o = { ":lua require('neotest').output.open()<CR>", "Test output" },
      },
      
      -- Git (usando g para evitar conflictos)
      ["<leader>g"] = {
        name = "+git",
        b = { ":GitBlameToggle<CR>", "Git blame" },
        c = { ":GitConflictListQf<CR>", "Git conflicts" },
      },
      
      -- Refactoring
      ["<leader>r"] = {
        name = "+refactor",
        e = { ":lua require('refactoring').refactor('Extract Function')<CR>", "Extract function" },
        v = { ":lua require('refactoring').refactor('Extract Variable')<CR>", "Extract variable" },
        i = { ":lua require('refactoring').refactor('Inline Variable')<CR>", "Inline variable" },
      },
      
      -- Formateo (manteniendo fm de NvChad)
      ["<leader>f"] = {
        name = "+format",
        m = { ":Format<CR>", "Formatear archivo" },
      },
      
      -- Selección
      ["<leader>a"] = { "ggVG", "Seleccionar todo" },
      
      -- Portapapeles
      ["<leader>y"] = { '"+y', "Copiar al sistema" },
      ["<leader>Y"] = { '"+yg_', "Copiar línea al sistema" },
      ["<leader>p"] = { '"+p', "Pegar desde sistema" },
      ["<leader>P"] = { '"+P', "Pegar antes desde sistema" },
      
      -- Yank history (usando nn para evitar conflicto con n de NvChad)
      ["<leader>nn"] = {
        name = "+yank-history",
        ["<leader>nn"] = { "<Plug>(YankyCycleForward)", "Siguiente en historial" },
        ["<leader>NN"] = { "<Plug>(YankyCycleBackward)", "Anterior en historial" },
      },
    }, {
      mode = "n",
    })
    
    -- Keybinds para modo visual
    wk.register({
      ["<leader>y"] = { '"+y', "Copiar al sistema" },
      ["<leader>r"] = {
        name = "+refactor",
        e = { ":lua require('refactoring').refactor('Extract Function')<CR>", "Extract function" },
        v = { ":lua require('refactoring').refactor('Extract Variable')<CR>", "Extract variable" },
      },
    }, {
      mode = "v",
    })
  end,
} 