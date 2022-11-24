local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then
  return
end

treesitter.setup {
  ensure_installed = { "typescript", "javascript", "scss", "css", "toml", "yaml", "bash", "json", "go", "lua", "c", "rust" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
