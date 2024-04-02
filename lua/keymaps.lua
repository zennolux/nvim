local map = vim.keymap.set
local options = { silent = true }

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

--translator
map("n", "<C-y>", ":TranslateW<CR>", options)

--telescope
map("n", "<Leader>f", ":lua require('telescope.builtin').find_files({search_dirs = {require('utils').get_project_root()}})<CR>", options)
map("n", "<Leader>s", ":lua require('telescope.builtin').live_grep({search_dirs = {require('utils').get_project_root()}})<CR>", options)
