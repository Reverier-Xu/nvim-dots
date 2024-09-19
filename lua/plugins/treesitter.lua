-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    indent = {
      enable = false,
    },
    ensure_installed = {
      "lua",
      "vim",
      "qmljs",
      "qmldir",
      "typst",
      "typescript",
      "javascript",
      "json",
      "json5",
      "asm",
      "bash",
      "csv",
      "dockerfile",
      "gitignore",
      "go",
      "http",
      "html",
      "css",
      "scss",
      "rust",
      "python",
      "c",
      "cpp",
      "toml",
      "yaml",
      "xml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
