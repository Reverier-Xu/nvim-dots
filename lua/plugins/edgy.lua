---@type LazySpec
return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        left = { size = 30 },
        bottom = { size = 10 },
        right = { size = 30 },
        top = { size = 10 },
      },
      -- edgebar animations
      animate = {
        enabled = false,
      },
      exit_when_last = true,
      icons = {
        closed = "[C]",
        open = "[O]",
      },
    },
  },
}
