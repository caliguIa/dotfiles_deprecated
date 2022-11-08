local Remap = require('caligula.keymap')
local nnoremap = Remap.nnoremap

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function config(_config)
  return vim.tbl_deep_extend('force', {
    capabilities = capabilities,
    on_attach = function()
      nnoremap('gd', function() vim.lsp.buf.definition() end)
      nnoremap('gt', function() vim.lsp.buf.type_definition() end)
      nnoremap('gi', function() vim.lsp.buf.implementation() end)
      nnoremap('K', function() vim.lsp.buf.hover() end)
      nnoremap('<leader>vws', function() vim.lsp.buf.workspace_symbol() end)
      nnoremap('<leader>vd', function() vim.diagnostic.open_float() end)
      nnoremap('<leader>dj', function() vim.diagnostic.goto_next() end)
      nnoremap('<leader>dk', function() vim.diagnostic.goto_prev() end)
      nnoremap('<leader>vrr', function() vim.lsp.buf.references() end)
      nnoremap('<leader>vrn', function() vim.lsp.buf.rename() end)
    end,
  }, _config or {})
end

require('lspconfig').tsserver.setup(config())

require('caligula.lsp.treesitter')

require('lspconfig').rust_analyzer.setup(config({
	cmd = { 'rustup', 'run', 'nightly', 'rust-analyzer' },
}))

require('lspconfig').gopls.setup(config({
	cmd = { 'gopls', 'serve' },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}))

require('lspconfig').sumneko_lua.setup(config({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
				-- Setup your lua path
				path = vim.split(package.path, ';'),
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
		},
	},
}))

