local opt = vim.opt

opt.guicursor = ''
opt.nu = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.hlsearch = false
opt.incsearch = true
opt.smartindent = true
opt.wrap = false
opt.updatetime = 50
opt.clipboard:append('unnamedplus')
opt.iskeyword:append('-')
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.backspace = 'indent,eol,start'
opt.splitright = true
opt.splitbelow = true
vim.g.mapleader = ' '
