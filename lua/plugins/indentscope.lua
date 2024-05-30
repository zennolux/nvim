return {
	"echasnovski/mini.indentscope",
	lazy = true,
	event = "BufRead",
	config = function()
		require("mini.indentscope").setup()
	end,
}
