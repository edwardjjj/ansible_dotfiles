return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  opts = {
    -- Event to trigger linters
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      fish = { "fish" },
      python = { "flake8" },
      -- Use the "*" filetype to run linters on all filetypes.
      -- ['*'] = { 'global linter' },
      -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
      -- ['_'] = { 'fallback linter' },
    },
  },
  config = function(_, opts)
    vim.api.nvim_create_autocmd(opts.events, {
      callback = function()
        require("lint").try_lint()
      end,
    })
    local flake8 = require("lint").linters.flake8
    flake8.args = {
      "--max-line-length 88",
    }
  end,
}
