	return {
		"windwp/nvim-ts-autotag",
		lazy = true,
		event = "insertEnter",
		config = function()
			require("nvim-ts-autotag").setup({})
		end,
	}
