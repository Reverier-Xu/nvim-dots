return {
  ---@module "neominimap.config.meta"
  {
    "Isrothy/neominimap.nvim",
    init = function()
      vim.opt.wrap = false
      ---@type Neominimap.UserConfig
      vim.g.neominimap = {
        float = {
          minimap_width = 16, ---@type integer

          --- If set to nil, there is no maximum height restriction
          --- @type integer
          max_minimap_height = nil,

          margin = {
            right = 0, ---@type integer
            top = 0, ---@type integer
            bottom = 0, ---@type integer
          },
          z_index = 1, ---@type integer

          --- Border style of the floating window.
          --- Accepts all usual border style options (e.g., "single", "double")
          --- @type string | string[] | [string, string][]
          window_border = "none",
        },
        click = {
          -- Enable mouse click on minimap
          enabled = true, ---@type boolean
          -- Automatically switch focus to minimap when clicked
          auto_switch_focus = false, ---@type boolean
        },
      }
    end,
  },
}
