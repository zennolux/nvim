require("nightfox").setup({
	options = {
		terminal_colors = true,
		module_default = false,
		styles = {
			keywords = "bold",
			functions = "bold",
		}
	},
	palettes = {
		nightfox = {
			--red = "#4e75aa",
			bg0 = "#192330",
		},
	},
})
vim.cmd("colorscheme nightfox")
