return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, { name = "codeium" })
  end,
}

-- "hrsh7th/nvim-cmp",
-- lazy = false,
-- priority = 100,
-- dependencies = {
--   "onsails/lspkind-nvim",
--   "hrsh7th/cmp-nvim-lsp",
--   "hrsh7th/cmp-path",
--   "hrsh7th/cmp-buffer",
--   "saadparwaiz1/cmp_luasnip",
-- },
-- config = function()
--   require("config.completion")
-- end,
--
-- cmp.lua
-- local cmp = require("cmp")
-- local window = require("cmp.config.window")
--
-- cmp.setup({
--   window = {
--     completion = window.bordered(),
--     documentation = window.bordered(),
--   },
--   -- The rest of your nvim-cmp setup
-- })
--
