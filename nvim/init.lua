-- lazy.nvim > setup
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system { 
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath
  }
end
vim.opt.rtp:prepend(lazypath)

-- load modules > setup
for _, value in ipairs(
  {
    "core.options", "core.keymaps"
  }
) do
  require(value)
end

-- lazy plugins > setup
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
})

