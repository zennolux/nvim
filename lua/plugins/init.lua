--stylua: ignore
require("utils").lazy:init().plugins
:append(
require('plugins.colorscheme')
):append(
require('plugins.floaterm')
):append(
require('plugins.gitsigns')
):append(
require('plugins.guard')
):append(
require('plugins.lualine')
):append(
require('plugins.tree')
):append(
require('plugins.telescope')
):append(
require('plugins.translator')
):append(
require('plugins.treesitter')
):append(
require('plugins.tailwind')
):append(
require('plugins.autotag')
):append(
require('plugins.autopairs')
):append(
require('plugins.colorizer')
):append(
require('plugins.indentscope')
):append(
require('plugins.neodev')
):append(
require('plugins.markdown')
):append(
require('plugins.lsp.config')
):append(
require('plugins.lsp.saga')
)
:load()
