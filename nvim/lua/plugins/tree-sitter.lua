return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "rust", "bash", "lua", "kdl", "json"
      })

      vim.api.nvim_create_autocmd('FileType', {
        callback = function() 
          pcall(vim.treesitter.start)
        end,
      })
    end
  },
}
