return {
	"nvim-lualine/lualine.nvim",
	lazy = true,
	event = "BufRead",
	dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
			},
			sections = {
				lualine_c = {
					{ "filename", path = 4 },
				},
			},
		})
	end,
}
