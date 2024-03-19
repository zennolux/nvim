local map = vim.keymap.set
local options = { silent = true }
local telescope = require('telescope.builtin')

--nvim-tree
map("n", "<C-b>", ":NvimTreeToggle<CR>", options)

--lspsaga
map("n", "gf", ":Lspsaga finder<CR>", options)
map("n", "gd", ":Lspsaga peek_definition<CR>", options)
map("n", "ge", ":Lspsaga diagnostic_jump_next<CR>", options)
map("n", "K", ":Lspsaga hover_doc<CR>", options)

map("n", "rn", ":Lspsaga rename<CR>", options)
map("n", "<Leader>t", ":Lspsaga outline<CR>", options)

--markdown
map("n", "md", ":MarkdownPreview<CR>", options)

--telescope
map("n", "<Leader>f", telescope.find_files, options)
map("n", "<Leader>s", telescope.live_grep, options)
