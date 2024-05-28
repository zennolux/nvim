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

local api = vim.api
local float_opts = { bg = "NONE", ctermbg = "NONE" }
local spell_opts = { ctermbg = "NONE", bg = "NONE", sp = "NONE" }

api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		--set float window highlight to NONE
		api.nvim_set_hl(0, "NormalFloat", float_opts)
		api.nvim_set_hl(0, "Float", float_opts)
		api.nvim_set_hl(0, "FloatBorder", float_opts)
		api.nvim_set_hl(0, "FloatShadow", float_opts)
		--set spell highlight to NONE
		api.nvim_set_hl(0, "SpellBad", spell_opts)
		api.nvim_set_hl(0, "SpellCap", spell_opts)
		api.nvim_set_hl(0, "SpellLocal", spell_opts)
		api.nvim_set_hl(0, "SpellRare", spell_opts)
		--set diagnostic highlight
		api.nvim_set_hl(0, "ErrorText", {
			ctermfg = 167,
			fg = 15105664,
		})
		api.nvim_set_hl(0, "InfoText", {
			ctermfg = 109,
			fg = 8371123,
		})
		api.nvim_set_hl(0, "HintText", {
			ctermfg = 142,
			fg = 10993792,
		})
		api.nvim_set_hl(0, "WarningText", {
			ctermfg = 214,
			fg = 14400639,
		})
	end,
})

vim.cmd.colorscheme("everforest")
