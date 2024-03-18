local map = vim.keymap.set
local options = { silent = true }

map("n", "<C-b>", ":NvimTreeToggle<CR>", options)
