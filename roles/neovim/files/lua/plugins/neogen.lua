return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      snippet_engine = "luasnip",
    })
    local map = vim.keymap.set
    map(
      { "n" },
      "<leader>nn",
      ":lua require('neogen').generate({ type = 'func' })<CR>",
      { desc = "Generate Function Doc", noremap = true, silent = true }
    )
    map(
      { "n" },
      "<leader>nc",
      ":lua require('neogen').generate({ type = 'class' })<CR>",
      { desc = "Generate Class Doc", noremap = true, silent = true }
    )
    map(
      { "n" },
      "<leader>nt",
      ":lua require('neogen').generate({ type = 'type' })<CR>",
      { desc = "Generate Type Doc", noremap = true, silent = true }
    )
    map(
      { "n" },
      "<leader>nf",
      ":lua require('neogen').generate({ type = 'file' })<CR>",
      { desc = "Generate File Doc", noremap = true, silent = true }
    )
  end,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
}
