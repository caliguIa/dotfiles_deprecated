-- vim.g.copilot_filetypes = {
--   ["*"] = false,
-- }

vim.cmd [[
  imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
  let g:copilot_node_command = "/Users/caligula/Library/Caches/fnm_multishells/77820_1655299809601/bin/node"
]]
