require("transparent").setup({
  enable = true,
  extra_groups = {
    "all",
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
    "lualine_a",
    "lualine_b",
    "lualine_c",
    "lualine_d",
    "lualine_e",
  },
  exclude = {},
})

vim.g.transparent_enabled = true
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer", "telescope" }
vim.g.tokyonight_transparent = vim.g.transparent_enabled
vim.g.tokyonight_hide_inactive_statusline = vim.g.transparent_enabled
vim.g.tokyonight_transparent_sidebar = vim.g.transparent_enabled
vim.g.tokyonight_dark_float = false

vim.cmd [[
try
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
