-- M is Module
local M = {}

M.config = function()
  vim.opt.showmode = false
  vim.opt.cursorline = true
  vim.opt.clipboard = "unnamed"
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.infercase = true
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.o.breakindent = true
  vim.o.breakindentopt = "shift:2"
  vim.o.autoindent = true
  vim.o.expandtab = true
  vim.o.tabstop = 2
  vim.o.shiftwidth = 2
  vim.o.softtabstop = 2
  vim.opt.scrolloff = 8
  vim.opt.clipboard:append({ "unnamed", "unnamedplus" })
  vim.opt.foldenable = false
  vim.opt.foldmethod = "indent"
  vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  vim.opt.timeoutlen = 400
  vim.opt.ttimeoutlen = 10
  vim.opt.termguicolors = true
  vim.opt.mouse = "nvi"
  vim.opt.signcolumn = "yes"
  vim.opt.updatetime = 100
  vim.opt.conceallevel = 0
  vim.g.do_filetype_lua = 1
  -- vim.opt.cmdheight = 0

  -- color scheme config
  vim.opt.background = ""
  -- in my settings
  -- Filetypes --
  vim.filetype.add({
    pattern = {
      [".*%.blade%.php"] = "blade",
    },
  })
end

return M
