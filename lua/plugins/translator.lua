return {
	"voldikss/vim-translator",
	lazy = true,
	cmd = "TranslateW",
	config = function()
		vim.g.translator_default_engines = {
			--'google',
			--'youdao',
			"bing",
			"haici",
		}
	end,
}
