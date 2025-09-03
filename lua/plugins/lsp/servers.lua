return {
	{
		"lua_ls",
		options = {
			filetypes = { "lua" },
			settings = {
				Lua = {
					hint = { enable = true },
				},
			},
		},
	},
	{
		"rust_analyzer",
		options = {
			filetypes = { "rust" },
		},
	},
	{
		"ts_ls",
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
					validate = false,
					lint = {
						validProperties = {},
						unknownAtRules = "ignore",
						unknownProperties = "ignore",
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
	{
		"markdown_oxide",
		options = {
			filetypes = { "markdown" },
		},
	},
	{
		"astro",
		options = {
			filetypes = { "astro" },
		},
	},
	{
		"intelephense",
		options = {
			filetypes = { "php" },
		},
	},
}
