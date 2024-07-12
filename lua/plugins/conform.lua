return {
  "stevearc/conform.nvim",
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    go = { "goimports", "gofmt" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "prettier" } },
    blade = { "blade-formatter" },
  },
  format_on_save = {
    -- I recommend these options. See :help conform.format for details.
    lsp_format = "fallback",
    timeout_ms = 500,
  },
}
