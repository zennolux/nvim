vim.g.everforest_background = "hard"
vim.g.everforest_better_performance = 1
vim.g.everforest_enable_italic = 0
vim.g.everforest_disable_italic_comment = 1
vim.g.everforest_transparent_background = 1
vim.g.everforest_ui_contrast = "high"
vim.g.everforest_diagnostic_text_highlight = 0
vim.g.everforest_diagnostic_line_highlight = 0
vim.g.everforest_diagnostic_virtual_text = "colored"
vim.g.everforest_float_style = "dim"
vim.cmd([[
  autocmd ColorScheme * highlight NormalFloat guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight Float guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight FloatBorder guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight FloatShadow guibg=NONE ctermbg=NONE
]])
vim.cmd.colorscheme("everforest")
