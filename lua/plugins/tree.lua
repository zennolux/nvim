require("nvim-tree").setup({
	renderer = {
		indent_markers = {
			enable = true,
		},
	},
	view = {
		width = 30
	},
	filters = {
		dotfiles = true,
		git_ignored = true,
	}
})
