require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
	},
	renderer = {
		add_trailing = true,
		group_empty = true,
		highlight_git = true,
		--highlight_opened_files = "all",
		indent_markers = {
			enable = true,
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		debounce_delay = 50,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	filters = {
		dotfiles = true,
		custom = { "node_modules" },
		exclude = { ".env", "test*" },
	},
})
