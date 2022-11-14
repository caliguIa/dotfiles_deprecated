local Remap = require('caligula.keymap')
local nnoremap = Remap.nnoremap

nnoremap("<leader>ng", "<cmd>Neogit<cr>") -- find files within current working directory, respects .gitignore
