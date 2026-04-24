---@type LazySpec
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    ---@type CatppuccinOptions
    ---@diagnostic disable: missing-fields
    opts = {
      transparent_background = true,
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      auto_integrations = true,
      integrations = {
        colorful_winsep = { color = "lavender" },
        snacks = {
          indent_scope_color = "lavender",
        },
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          return require("astrocore").extend_tbl(opts, {
            highlights = require("catppuccin.special.bufferline").get_theme(),
          })
        end,
      },
      {
        "nvim-telescope/telescope.nvim",
        optional = true,
        opts = {
          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
        },
      },
    },
  },
}
