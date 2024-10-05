return {
	"nvimdev/guard.nvim",
	lazy = true,
	event = "BufRead",
	config = function()
		local ft = require("guard.filetype")

		ft("html,css,javascript,typescript,typescriptreact,json,yaml"):fmt({
			cmd = "prettier",
			args = { "--stdin-filepath" },
			fname = true,
			stdin = true,
		})

		ft("rust"):fmt({
			cmd = "rustfmt",
			args = { "--edition", "2021", "--emit", "stdout" },
			stdin = true,
		})

		ft("lua"):fmt({
			cmd = "stylua",
			args = { "-" },
			stdin = true,
		})

		vim.g.guard_config = {
			fmt_on_save = true,
			lsp_as_default_formatter = true,
		}
	end,
}
