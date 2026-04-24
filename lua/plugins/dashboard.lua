---@type LazySpec
return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat({
          "",
          " ██████╗  ██╗  ██╗     ██████╗  ███████╗ ██╗   ██╗ ",
          " ██╔══██╗ ╚██╗██╔╝     ██╔══██╗ ██╔════╝ ██║   ██║ ",
          " ██████╔╝  ╚███╔╝      ██║  ██║ █████╗   ██║   ██║ ",
          " ██╔══██╗  ██╔██╗      ██║  ██║ ██╔══╝   ╚██╗ ██╔╝ ",
          " ██║  ██║ ██╔╝ ██╗     ██████╔╝ ███████╗  ╚████╔╝  ",
          " ╚═╝  ╚═╝ ╚═╝  ╚═╝     ╚═════╝  ╚══════╝   ╚═══╝   ",
          "",
        }, "\n"),
        keys = {
          { key = "e", icon = "> ", desc = "[E] Create a new file", action = ":ene | startinsert" },
          { key = "f", icon = "> ", desc = "[F] Find a file", action = "<Leader>ff" },
          { key = "r", icon = "> ", desc = "[R] Recent working files", action = "<Leader>fo" },
          { key = "s", icon = "> ", desc = "[S] Editor Settings", action = "<Leader>fa" },
          { key = "q", icon = "> ", desc = "[Q] Bye bye~", action = ":qa" },
        },
      },
      sections = {
        { section = "header", padding = 2 },
        { section = "keys", gap = 1, padding = 2 },
        { section = "startup" },
        { footer = "Welcome to Reverier's Workstation!", padding = 1 },
      },
    },
  },
}
