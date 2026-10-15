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
        ensure_installed = { "rust_analyzer", "bashls" }
      })
      local servers = { "rust_analyzer", "bashls" }

      for _, key in ipairs(servers) do
        vim.lsp.config(key, {})
        vim.lsp.enable(key)
      end
    end
  }
}
