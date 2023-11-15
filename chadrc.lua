local M = {}

M.ui = {
  theme = "chadracula",
  statusline = {
    theme = "vscode_colored",
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
