local Remap = require('caligula.keymap')
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- open netrw
nnoremap('<leader>fv', '<CMD>Ex<CR>')

-- make current buffer executable
nnoremap('<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })
