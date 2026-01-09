---@type LazySpec
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require "alpha"
      local dashboard = require "alpha.themes.dashboard"
      dashboard.section.header.val = {
        "",
        " ██████╗  ██╗  ██╗     ██████╗  ███████╗ ██╗   ██╗ ",
        " ██╔══██╗ ╚██╗██╔╝     ██╔══██╗ ██╔════╝ ██║   ██║ ",
        " ██████╔╝  ╚███╔╝      ██║  ██║ █████╗   ██║   ██║ ",
        " ██╔══██╗  ██╔██╗      ██║  ██║ ██╔══╝   ╚██╗ ██╔╝ ",
        " ██║  ██║ ██╔╝ ██╗     ██████╔╝ ███████╗  ╚████╔╝  ",
        " ╚═╝  ╚═╝ ╚═╝  ╚═╝     ╚═════╝  ╚══════╝   ╚═══╝   ",
        "",
      }
      dashboard.section.header.opts.hl = "Function"
      dashboard.section.buttons.val = {
        dashboard.button("e", "Create a new file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "Find a file", ":Telescope find_files<CR>"),
        dashboard.button("r", "Recent working files", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "Editor Settings", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "Bye bye~", ":qa<CR>"),
      }

      dashboard.section.footer.val = "Welcome to Reverier's DevEngine!"

      dashboard.config.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
