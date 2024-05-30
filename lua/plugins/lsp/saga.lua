return {
	"nvimdev/lspsaga.nvim",
	lazy = true,
	event = "LspAttach",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lspsaga").setup({
			ui = {
				border = "rounded",
				code_action = "",
			},
			finder = {
				default = "ref+imp+def",
			},
			lightbulb = {
				enable = true,
				sign = "",
			},
		})
	end,
}
