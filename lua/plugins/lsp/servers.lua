return {
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
		enable = true,
		options = {
			filetypes = { "typescriptreact" },
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
					  unknownAtRules = 'ignore',
					},
    		},
			}
		},
	},
	{
		"jsonls",
		options = {
			filetypes = { "json" },
		},
	},
}
