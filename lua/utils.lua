local M = {}

function M.define_options(opts, global)
	local set = vim.o
	if global == true then
		set = vim.g
	end
	for _, val in pairs(opts) do
		set[_] = val
	end
end

function M.define_sign(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

function M.get_project_root()
  local path = vim.fn.expand('%:p:h')
  while path ~= '/' do
    if vim.fn.glob(path .. '/.git') ~= '' or vim.fn.glob(path .. '/package.json') ~= '' then
      return path
    end
    path = vim.fn.fnamemodify(path, ':h')
  end
  return path
end

function M.toggle_tree_filter()
	local tree = require("nvim-tree.api").tree
	tree.toggle_hidden_filter()
	tree.toggle_gitignore_filter()
end

return M
