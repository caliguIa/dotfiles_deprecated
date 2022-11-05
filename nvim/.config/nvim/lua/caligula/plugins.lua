vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- reduce startup time by caching lua modules
  use 'lewis6991/impatient.nvim'

  -- lsp
  use "neovim/nvim-lspconfig"
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")

  -- Treeshitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }

  -- colorschemes
  use('gruvbox-community/gruvbox')
  use('folke/tokyonight.nvim')
  use({ 'catppuccin/nvim', as = 'catppuccin' })
  use({ 'rose-pine/neovim', as = 'rose-pine' })

end)
