local overrides = require "custom.configs.overrides"

local plugins = {
  {
    import = "custom.plugins.copilot",
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    import = "custom.plugins.neotest",
  },
  {
    import = "custom.plugins.dap",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  { "tpope/vim-fugitive", cmd = { "Git" } },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "stevearc/conform.nvim",
    opts = overrides.conform,
  },
  { "preservim/nerdcommenter" },
  {
    "echasnovski/mini.indentscope",
    opts = overrides.indentscope,
  },
  {
    "nvim-treesitter/nvim-treesitter",

    dependencies = {
      "LiadOz/nvim-dap-repl-highlights",
      config = function()
        require("nvim-dap-repl-highlights").setup()
      end,
    },
    opts = overrides.treesitter,
  },
}

return plugins
