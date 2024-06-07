-- Prevent LSP from overwriting treesitter color settings
vim.highlight.priorities.semantic_tokens = 95
-- Colorscheme in use
local colorscheme = require("plugins.colorscheme.everforest")
return colorscheme
