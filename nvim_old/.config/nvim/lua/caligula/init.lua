require("caligula.plugins.impatient")
require("caligula.set")
require("caligula.plugins")
require("caligula.plugins.comment")
if vim.g.vscode then
	-- VSCode extension
else
	require("caligula.plugins.autopairs")
	require("caligula.plugins.lualine")
	require("caligula.plugins.gitsigns")
	require("caligula.plugins.neogit")
	require("caligula.plugins.copilot")
	require("caligula.lsp.mason")
	require("caligula.lsp")
	require("caligula.lsp.cmp")
	require("caligula.lsp.treesitter")
	require("caligula.lsp.lspsaga")
	require("caligula.lsp.null-ls")
	-- ordinary neovim
end
