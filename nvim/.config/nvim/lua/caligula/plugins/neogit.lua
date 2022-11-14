-- import comment plugin safely
local setup, neogit = pcall(require, "neogit")
if not setup then
  return
end

-- enable comment
neogit.setup()
