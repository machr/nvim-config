  vim.cmd("set expandtab")
  vim.cmd("set tabstop=2")
  vim.cmd("set softtabstop=2")
  vim.cmd("set shiftwidth=2")
  vim.cmd("set number")
  vim.opt.relativenumber = true
  vim.opt.clipboard:append("unnamedplus")
  vim.g.loaded_matchparen = true
  vim.g.mapleader = " "
  vim.opt.fileencoding = "utf-8"
  vim.opt.title = true
  vim.opt.smartindent = true
  vim.opt.autoindent = true
  vim.opt.hlsearch = true
  vim.opt.scrolloff = 10
  vim.opt.backspace = {"start", "eol", "indent"}
  vim.opt.wildignore:append({"*/node_modules/*"})
