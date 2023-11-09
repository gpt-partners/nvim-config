local plugins = {
  {"github/copilot.vim", lazy = false},
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "bash"
      },
    },
  },
}

return plugins
