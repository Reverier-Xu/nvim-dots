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
        dashboard.button("e", "> [E] Create a new file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "> [F] Find a file", ":Telescope find_files<CR>"),
        dashboard.button("r", "> [R] Recent working files", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "> [S] Editor Settings", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "> [Q] Bye bye~", ":qa<CR>"),
      }

      dashboard.section.footer.val = "Welcome to Reverier's Workstation!"

      dashboard.config.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
