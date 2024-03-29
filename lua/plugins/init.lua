local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"voldikss/vim-floaterm",
		lazy = false,
		--[[
		cmd = {
			"FloatermToggle",
			"FloatermNew",
			"FloatermNext",
		},
		--]]
		config = function()
			require("plugins.floaterm")
		end
	},
	{
		"windwp/nvim-autopairs",
		lazy = true,
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup()
		end
	},
	{
		"windwp/nvim-ts-autotag",
		lazy = true,
		event = "insertEnter",
		config = function()
			require("nvim-ts-autotag").setup()
		end
	},
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("plugins.tokyonight")
    end
  },
	{
		"nvim-lualine/lualine.nvim",
		lazy = true,
		event = "BufRead",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
		config = function()
			require("plugins.lualine")
		end
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = true,
		cmd = "NvimTreeToggle",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
		config = function()
			require("plugins.tree")
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufRead",
		config = function()
			require("plugins.treesitter")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = "BufRead",
		config = function()
			require("plugins.lspconfig")
		end
	},
	{
    'nvimdev/lspsaga.nvim',
		lazy = true,
		event = "LspAttach",
    config = function()
			require("plugins.lspsaga")
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',   
    }
	},
	{
    "iamcco/markdown-preview.nvim",
		lazy = true,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
			vim.fn["mkdp#util#install"]()
		end,
  },
	{
    'nvim-telescope/telescope.nvim',
		lazy = false,
		tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require("plugins.telescope")
		end
  }
})
