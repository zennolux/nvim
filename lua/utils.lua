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

return M
