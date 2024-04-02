local ft = require('guard.filetype')

ft('html,css,javascript,typescript,typescriptreact'):fmt({
	cmd = 'prettier',
  args = { '--stdin-filepath' },
  fname = true,
  stdin = true,
})

ft('rust'):fmt({
	cmd = 'rustfmt',
  args = { '--edition', '2021', '--emit', 'stdout' },
  stdin = true,
})

require('guard').setup({
	fmt_on_save = true,
	lsp_as_default_formatter = true,
})
