return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = true,
	cmd = "NvimTreeToggle",
	dependencies = {
		{
			"nvim-tree/nvim-web-devicons",
			config = function()
				require("nvim-web-devicons").setup({
					override = {
						css = {
							icon = "",
							cterm_color = "62",
							name = "Css",
						},
					},
					override_by_filename = {
						["vite.config.ts"] = {
							icon = "",
							name = "vite.config.ts",
						},
						["pnpm-lock.yaml"] = {
							yaml = {
								icon = "",
								name = "pnpm-lock.yaml",
							},
						},
					},
				})
			end,
		},
	},
	config = function()
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			renderer = {
				add_trailing = true,
				group_empty = true,
				highlight_git = true,
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
	end,
}
