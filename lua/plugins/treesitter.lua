require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"rust",
		"lua",
		"markdown",
		"markdown_inline",
		"json",
		"toml",
		"yaml",
	},
	highlight = {
		enable = true,
	},
	indent = true,
})
