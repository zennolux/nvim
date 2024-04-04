require("material").setup({
	lua_style = "stealth",
  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = false, -- Enable darker background for the cursor line
    lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
    non_current_windows = false, -- Enable contrasted background for non-current windows
    filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
  },
	styles = { -- Give comments style such as bold, italic, underline etc.
		comments = { --[[ italic = true ]] },
		strings = { --[[ bold = true ]] },
		keywords = { --[[ underline = true ]] },
		functions = { --[[ bold = true, undercurl = true ]] },
		variables = {},
		operators = {},
		types = {},
  },
})

vim.g.material_style = "palenight"
vim.cmd 'colorscheme material'
