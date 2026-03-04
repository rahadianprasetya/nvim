local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    -- go = { "gofumpt", "goimports-reviser", "golines" },
    go = { "goimports", "gofmt" },
    c = { "clang-format" },
    cpp = { "clang-format" },
  },

  formatters = {
    ["clang-format"] = {
      prepend_args = {
        "-style={IndentWidth: 4, TabWidth: 4, UseTab: Never}",
      },
    },
  },

  format_on_save = {
    --   -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
