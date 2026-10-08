return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    version = '*',
    opts = {
      keymap = {
        preset = 'none',

        ['<Tab>'] = { 'select_and_accept', 'snippet_forward', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback' },
      },

      appearance = {
        nerd_font_variant = 'mono'
      },
      completion = {
        documentation = {
          auto_show = false 
        },
        list = {
          max_items = 20
        },
        trigger = {
          show_on_keyword = true
        },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  }
}
