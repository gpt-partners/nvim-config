local M = {}

M.treesitter = {
  highlight = {
    enable = true,
  },
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "bash",
    "python",
    "yaml",
    "dap_repl",
  },
}
M.mason = {
  ensure_installed = {
    "lua-language-server",
    "vtsls",
    "html-lsp",
    "prettierd",
    "stylua",
    "isort",
    "black",
    "eslint_d",
    "pyright",
    "yaml-language-server",
    "python-language-server",
    "debugpy",
    "docker-compose-language-service",
    "dockerfile-language-server",
  },
}

M.conform = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    css = { { "prettierd" } },
    html = { { "prettierd" } },
    yaml = { { "prettierd" } },
    json = { { "prettierd" } },
    javascript = { { "prettierd" } },
    typescript = { { "prettierd" } },
    typescriptreact = { { "prettierd" } },
  },
  formatters = {
    black = {
      prepend_args = { "-l", 80 },
    },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

M.indentscope = {
  symbol = "│",
  options = { try_as_border = true },
}

return M
