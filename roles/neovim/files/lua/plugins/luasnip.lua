return {
  "L3MON4D3/Luasnip",
  event = "VeryLazy",
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  config = function()
    require("snippets.pysnip")
  end,
}
