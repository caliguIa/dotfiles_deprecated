local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "caligula.lsp.configs"
require("caligula.lsp.handlers").setup()
require "caligula.lsp.null-ls"
