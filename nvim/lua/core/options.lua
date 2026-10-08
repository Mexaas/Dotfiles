--
-- options module
--
local opt = vim.opt

vim.g.mapleader = " "

opt.wrap = false
opt.termguicolors = true
opt.fillchars = { eob = " " }
opt.swapfile = false
opt.clipboard = "unnamedplus"
opt.number = true

-- tab
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

-- diagnostic
vim.diagnostic.config({
  virtual_text = {
    prefix = "",
    spacing = 8,
  },
  float = {
    source = "always",
    border = "rounded",
  },
  signs = true,
  underline = true, 
  update_in_insert = false,
  severity_sort = true,
})
