return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    event = "VeryLazy",
    config = function() require("cord").setup({
      display = {
        theme = "catppuccin",
        flavor = "dark",
        view =  "asset"
      },
      text = {
        editing = function(opts) return "Working with " .. opts.filename end,
        viewing = function(opts) return "Is watching " .. opts.filename end,
        workspace = function(opts) return "In " .. opts.workspace end,
        dashboard = "AFK",
        file_browser = function(opts) return "Finding something in " .. opts.name end
      },
      buttons = {
        {
          label = "Download Mexvim",
          url = "https://github.com/Mexaas/Mexvim",
        },
      },
    })
    end
  },
}
