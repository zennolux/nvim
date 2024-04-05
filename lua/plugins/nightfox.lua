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
		},
	},
})
vim.cmd("colorscheme nightfox")
