require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Configuración de clipboard y portapapeles
vim.opt.clipboard = "unnamedplus"  -- Integración con portapapeles del sistema
vim.opt.undofile = true            -- Historial de cambios persistente
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"

vim.opt.list = true
vim.opt.listchars:append({ space = '·' })
