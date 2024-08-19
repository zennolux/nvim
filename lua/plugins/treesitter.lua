return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	event = "BufEnter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"rust",
				"json",
				"toml",
				"yaml",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
