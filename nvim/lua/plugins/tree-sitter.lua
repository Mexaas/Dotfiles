return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "java"
      })

      vim.api.nvim_create_autocmd('FileType', {
        callback = function() 
          pcall(vim.treesitter.start)
        end,
      })
    end
  },
  
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "jdtls" }
      })
      local servers = { "jdtls" }

      for _, key in ipairs(servers) do
        vim.lsp.config(key, {})
        vim.lsp.enable(key)
      end
    end
  }
}
