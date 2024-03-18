require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"html",
		"css",
		"javascript",
		"typescript",
		"php",
		"rust",
		"lua",
		"markdown"
	},
	sync_install = true,
	indent = true,
})
