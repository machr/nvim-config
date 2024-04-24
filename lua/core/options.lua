local M = {}

M.config = function()
  vim.opt.showmode = false
  vim.opt.cursorline = true
  vim.opt.clipboard = 'unnamed'
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.infercase = true
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.foldenable = false
  vim.opt.foldmethod = 'expr'
  vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
  vim.opt.timeoutlen = 400
  vim.opt.ttimeoutlen = 10
  vim.opt.termguicolors = true
  vim.opt.mouse = 'nvi'
  vim.opt.signcolumn = 'yes'
  vim.opt.updatetime = 100
  vim.opt.conceallevel = 0
  vim.g.do_filetype_lua = 1
  -- vim.opt.cmdheight = 0

  -- color scheme config
  vim.opt.background = 'dark'

end

return M
