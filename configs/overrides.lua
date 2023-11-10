local M = {}

M.copilot = {
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    markdown = true,
    help = true,
  },
}

M.treesitter = {
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
  },
}
M.mason = {
  ensure_installed = {
    "lua-language-server",
    "typescript-language-server",
    "html-lsp",
    "prettier",
    "stylua",
  },
}

M.conform = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { { "prettierd", "prettier" } },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return M
