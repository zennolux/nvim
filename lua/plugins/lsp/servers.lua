return {
	{
		"lua_ls",
		options = {
			filetypes = { "lua" },
		},
	},
	{
		"rust_analyzer",
		options = {
			filetypes = { "rust" },
		},
	},
	{
		"tsserver",
		options = {
			filetypes = { "javascript", "typescript", "typescriptreact" },
			init_options = {
				preferences = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = true,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayVariableTypeHintsWhenTypeMatchesName = true,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
		},
	},
	{
		"volar",
		enable = false,
		options = {
			filetypes = { "vue" },
		},
	},
	{
		"prismals",
		enable = false,
		options = {
			filetypes = { "prisma" },
		},
	},
	{
		"intelephense",
		options = {
			filetypes = { "php" },
		},
	},
	{
		"tailwindcss",
		options = {
			filetypes = { "css", "typescriptreact" },
		},
	},
	{
		"html",
		options = {
			filetypes = { "html" },
		},
	},
	{
		"cssls",
		options = {
			filetypes = { "css" },
			settings = {
				css = {
					lint = {
						unknownAtRules = "ignore",
					},
				},
			},
		},
	},
	{
		"jsonls",
		options = {
			filetypes = { "jsonc", "json" },
		},
	},
}
