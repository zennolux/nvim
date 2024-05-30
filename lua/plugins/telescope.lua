return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					theme = "dropdown",
				},
				live_grep = {
					theme = "dropdown",
				},
				buffers = {
					theme = "dropdown",
				},
			},
		})
	end,
}
