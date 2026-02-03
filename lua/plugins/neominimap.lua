return {
  ---@module "neominimap.config.meta"
  {
    "Isrothy/neominimap.nvim",
    init = function()
      vim.opt.wrap = false
      ---@type Neominimap.UserConfig
      vim.g.neominimap = {
        layout = "split", ---@type "split" | "float"
        split = {
          minimap_width = 16, ---@type integer

          -- Always fix the width of the split window
          fix_width = true, ---@type boolean

          direction = "right", ---@type Neominimap.Config.SplitDirection

          --- Automatically close the split window when it is the last window.
          close_if_last_window = true, ---@type boolean

          --- When true, the split window will be recreated when you close it.
          --- When false, the minimap will be disabled for the current tab when you close the minimap window.
          persist = true, ---@type boolean
        },
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
