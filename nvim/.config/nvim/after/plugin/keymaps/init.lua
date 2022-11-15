local Remap = require('caligula.keymap')
local nnoremap = Remap.nnoremap

nnoremap('<leader>fv', '<CMD>Ex<CR>') -- open netrw

nnoremap('<leader>x', '<cmd>!chmod +x %<CR>', { silent = true }) -- make current buffer executable

nnoremap("<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("n", "nzz")

nnoremap("<leader>sc", ":luafile $MYVIMRC<CR>")

