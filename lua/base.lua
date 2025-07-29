local utils = require("utils")

utils.define_options({
	mapleader = ";",
	--for floaterm plugin
	floaterm_keymap_toggle = "<F1>",
	floaterm_keymap_new = "<F2>",
	floaterm_keymap_next = "<F3>",
	--for nvim-tree pligin ,
	loaded_netrw = 1,
	loaded_netrwPlugin = 1,
}, true)

utils.define_options({
	termguicolors = true,
	nu = true,
	relativenumber = true,
	autoindent = true,
	smartindent = true,
	smarttab = true,
	shiftwidth = 2,
	tabstop = 2,
	signcolumn = "auto:1",
	cursorline = true,
	encoding = "utf-8",
	fileformats = "unix",
	mouse = "",
	cmdheight = 0,
	conceallevel = 0,
	spell = true,
	spelllang = "en_us",
})

utils.define_sign({ name = "DiagnosticSignError", text = "" })
utils.define_sign({ name = "DiagnosticSignWarn", text = "" })
utils.define_sign({ name = "DiagnosticSignHint", text = "" })
utils.define_sign({ name = "DiagnosticSignInfo", text = "" })
