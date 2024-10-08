return {
  "stevearc/conform.nvim",
  opts = {
    -- log_level = vim.log.levels.DEBUG,
    formatters_by_ft = {
      sql = { "sqlformatter" },
      svg = { "svgo" },
      php = { "blade-formatter" },
      blade = { "blade-formatter" },
      cs = { "csharpier" },
    },
    formatters = {
      csharpier = {
        command = "dotnet-csharpier",
        args = { "--write-stdout" },
      },
      sqlformatter = {
        command = vim.fn.stdpath("data") .. "/mason/packages/sql-formatter/node_modules/.bin/sql-formatter",
        args = { "--config", vim.fn.stdpath("config") .. "/formatters/sql/config.json" },
      },
      svgo = {
        command = "/usr/bin/svgo",
        args = {
          "--input",
          "-",
          "--output",
          "-",
          "--pretty",
          "--config",
          vim.fn.stdpath("config") .. "/formatters/svgo/svgo.config.js",
        },
      },
    },
  },
}
