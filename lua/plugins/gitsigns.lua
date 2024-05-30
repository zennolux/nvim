return {
	"lewis6991/gitsigns.nvim",
	lazy = true,
	event = "BufRead",
	config = function()
		require("gitsigns").setup({
			current_line_blame = true,
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
				delay = 1000,
				ignore_whitespace = false,
				virt_text_priority = 100,
			},
			current_line_blame_formatter = " <author>, <author_time:%Y-%m-%d %H:%m> - <summary>",
		})
	end,
}
