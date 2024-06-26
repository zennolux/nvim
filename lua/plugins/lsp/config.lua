return {
	"neovim/nvim-lspconfig",
	lazy = true,
	event = "BufRead",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"f3fora/cmp-spell",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	config = function()
		vim.lsp.inlay_hint.enable(true)
		require("neodev").setup()
		local servers = require("plugins.lsp.servers")
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		for _, item in pairs(servers) do
			if item.enable ~= false then
				local lsp = item[1]
				require("lspconfig")[lsp].setup({
					capabilities = capabilities,
					flags = {
						debounce_text_changes = 150,
					},
					filetypes = item.options.filetypes,
					settings = item.options.settings or {},
					init_options = item.options.init_options or {},
					single_file_support = true,
				})
			end
		end

		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		local cmp = require("cmp")
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered({
					border = "rounded",
					winhighlight = "Normal:None,FloatBorder:None,CursorLine:Pmenu,Search:CurSearch",
				}),
				documentation = cmp.config.window.bordered({
					border = "rounded",
					winhighlight = "Normal:None,FloatBorder:None,CursorLine:Pmenu,Search:CurSearch",
				}),
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			}, {
				{ name = "buffer" },
				{ name = "path" },
			}, {
				{
					name = "spell",
					option = {
						keep_all_entries = false,
						enable_in_context = function()
							return true
						end,
						preselect_correct_word = true,
					},
				},
			}),
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text",
					maxwidth = 100,
					before = function(entry, vim_item)
						vim_item.menu = ({
							buffer = "󰃨 [Buffer]",
							nvim_lsp = "󰿘 [LSP]",
							luasnip = "󰅩 [LuaSnip]",
							path = " [Path]",
							spell = "󰓆 [Spell]",
						})[entry.source.name]

						-- for tailwind-tools
						local doc = entry.completion_item.documentation
						local utils = require("tailwind-tools.utils")

						if vim_item.kind == "Color" and doc then
							local content = type(doc) == "string" and doc or doc.value
							local base, _, _, _r, _g, _b = 10, content:find("rgba?%((%d+), (%d+), (%d+)")

							if not _r then
								base, _, _, _r, _g, _b = 16, content:find("#(%x%x)(%x%x)(%x%x)")
							else
								local r, g, b = tonumber(_r, base), tonumber(_g, base), tonumber(_b, base)
								vim_item.kind_hl_group = utils.set_hl_from(r, g, b, "foreground")
							end
						end
						return vim_item
					end,
				}),
			},
		})

		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
