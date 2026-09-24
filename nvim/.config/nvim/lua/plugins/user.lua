return {

  -- Discord RPC
  {
    "vyfor/cord.nvim",
    build = "./build",
    event = "VeryLazy",
    config = function() require("cord").setup({
      display = {
        theme = "minecraft",
      },
      text = {
        editing = function(opts) return "Работает с " .. opts.filename end,
        viewing = function(opts) return "Наблюдает за " .. opts.filename end,
        workspace = function(opts) return "В " .. opts.workspace end,
        dashboard = "Не у компа",
        file_browser = function(opts) return "Ищет что-то в " .. opts.name end
      },
      editor = {
        tooltip = "Редактор кода для !skill_issue"
      }
    })
    end
  },

  -- Main theme
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme miasma")
    end,
  },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⣤⣼⣿⣿⣿⣿⣿⣿⣷⣶⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣢⣾⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡟⠛⢻⠉⡉⠍⠁⠁⠀⠈⠙⢻⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠏⢠⢀⡼⡄⠃⠤⠀⠀⠀⠀⠀⡐⠸⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⢰⣸⡎⣀⣷⣤⣶⣶⣶⣦⡀⠀⠈⠓⢿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣇⣤⣯⣿⣿⣿⣿⣿⣿⣿⣭⣯⡆⠀⠀⠘⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⣻⣿⣿⣼⠀⢹⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⢘⣿⠙⠡⢽⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣛⣿⣯⠏⠀⢀⣿⣿⣿⣯⣠⡀⠀⠀⠀⢀⣾⡏⠒⢻⣷⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡟⢘⣏⣺⣤⣬⣭⣼⣿⣿⣯⡉⢻⣦⣌⣦⣾⣿⣿⡚⠾⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢹⡼⣿⣿⢼⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⡿⣿⢿⡟⢳⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣿⣧⡞⣻⣩⣽⡽⣿⣿⣿⣿⣿⣿⣿⣿⡟⣠⣿⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡿⣇⣬⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⡿⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡛⣿⣄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⡃⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠈⢳⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⢿⡟⠻⢿⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣍⠓⠲⠤⢤⣄⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠈⣿⡏⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠈⠈⢯⡁⠀⠀⠀⠉⠹⠶⢤⣀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⠀⢀⠹⣿⡆⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣷⣤⣄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⠚⢩⠀⢸⡄⢹⣿⣦⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣷⣤⡄⠀⢀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠴⠋⡀⣀⣰⣿⠀⠄⠹⣾⣿⣿⡿⣿⠀⢠⣤⣀⣴⣤⣤⡴⠶⠶⠿⠿⠛⠛⠋⠉⠉⣠⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠞⠁⢀⡱⠏⠉⡟⠃⠀⠀⠀⢸⣿⣿⠇⣿⡴⠾⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠟
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠖⢋⣡⣶⣿⣂⡼⠁⠉⠙⠋⠙⠿⠟⣢⣄⢿⡟⠴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠈⠀⠀
⠀⠀⠀⢀⣠⠴⠚⠉⠉⠀⠀⠀⠀⠀⣸⡿⠟⠀⠀⠀⠀⠀⠀⠲⣾⡛⣿⣬⡄⠀⠀⠁⠠⣤⠆⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⣠⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠤⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠺⣿⡟⣿⡟⠀⠀⠂⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀
⠞⠁⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⡀⡀⣼⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠈⠁⠆⠀⠀
 
                          ▄▄▄▄▄ ▄▄▄▄▄▄    ▄▄▄▄▄▄▄ 
          ▀▀               ███  ███▀▀██▄ ███▀▀▀▀▀ 
    ▄████ ██  ▄████  ▀▀█▄  ███  ███  ███ ███▄▄    
    ██ ██ ██  ██ ██ ▄█▀██  ███  ███  ███ ███      
    ▀████ ██▄ ▀████ ▀█▄██ ▄███▄ ██████▀  ▀███████ 
      ██        ██                               
    ▀▀▀       ▀▀▀                                ⠀
          ]]
        },
      },
    },
  },

  { "max397574/better-escape.nvim", enabled = false },

  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })

      require "astronvim.plugins.configs.luasnip"(plugin, opts)
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts)
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            :with_pair(cond.not_after_regex "%%")
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            :with_move(cond.none())
            :with_del(cond.not_after_regex "xx")
            :with_cr(cond.none()),
        },
        Rule("a", "a", "-vim")
      )
    end,
  },
}
