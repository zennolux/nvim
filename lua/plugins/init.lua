local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
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
	}
})
