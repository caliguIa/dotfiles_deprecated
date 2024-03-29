-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- FileTree keymaps
vim.keymap.set(
	{ "n", "v" },
	"<leader>fe",
	"<CMD>lua MiniFiles.open()<CR>",
	{ silent = true, desc = "Toggle [F]ile [E]xplorer" }
)

-- Git keymaps
vim.keymap.set({ "n" }, "<leader>G", "<CMD>Git<CR>", { silent = true, desc = "Open [G]it" })
vim.keymap.set({ "n" }, "<leader>gB", "<CMD>Git blame<CR>", { silent = true, desc = "Open [G]it [B]lame" })

-- Source init.lua (hotreload config)
vim.keymap.set({ "n", "v" }, "<leader>,r", "<CMD>luafile %<CR>", { silent = true, desc = "Source init.lua" })

-- Glance.nvim keymaps
vim.keymap.set("n", "gd", "<CMD>Glance definitions<CR>", { silent = true, desc = "[G]o to [D]efinition" })
vim.keymap.set("n", "gr", "<CMD>Glance references<CR>", { silent = true, desc = "[G]o to [R]eferences" })
vim.keymap.set("n", "gt", "<CMD>Glance type_definitions<CR>", { silent = true, desc = "[G]o to [T]ype definition" })
vim.keymap.set("n", "gi", "<CMD>Glance implementations<CR>", { silent = true, desc = "[G]o to [I]mplementations" })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
