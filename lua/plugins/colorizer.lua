return {
	"NvChad/nvim-colorizer.lua",
	lazy = true,
	event = "BufRead",
	config = function()
		require("colorizer").setup({})
	end,
}
