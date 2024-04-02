require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"php",
		"rust",
		"lua",
		"markdown",
		"markdown_inline",
		"json",
		"toml",
	},
	sync_install = true,
	indent = true,
})
