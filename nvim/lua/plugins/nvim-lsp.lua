return {
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
