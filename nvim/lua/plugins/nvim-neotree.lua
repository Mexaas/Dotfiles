return {
  {
    "echasnovski/mini.icons",
    lazy = true,
    config = function()
      local plugin = require("mini.icons")
      plugin.setup({
        style = "glyph"
      })
      plugin.mock_nvim_web_devicons()
    end
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.icons",
    },
    lazy = false,
    config = function()
    require("neo-tree").setup({
      enable_git_status = false,
      enable_diagnostics = false,
      
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
        }
      },
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node"
        }
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          hide_dotfiles = false
        },
      }
    })
    end
  }
}
