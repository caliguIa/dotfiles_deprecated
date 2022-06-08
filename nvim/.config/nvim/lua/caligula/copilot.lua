-- vim.g.copilot_filetypes = {
--   ["*"] = false,
-- }

vim.cmd [[
  imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
  let g:copilot_node_command = "/Users/caligula/Library/Caches/fnm_multishells/19570_1654445985582/bin/node"
]]
