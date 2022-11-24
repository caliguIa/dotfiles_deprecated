local setup, lualine = pcall(require, "lualine")
if not setup then
  return
end

lualine.setup({
    sections = {
        lualine_c = {{'filename', path = 1}}
    }
})
