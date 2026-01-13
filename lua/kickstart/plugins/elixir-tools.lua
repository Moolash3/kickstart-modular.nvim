return {
  'elixir-tools/elixir-tools.nvim',
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local elixir = require 'elixir'
    local elixirls = require 'elixir.elixirls'

    elixir.setup {
      nextls = { enable = false },
      elixirls = {
        enable = true,
        settings = elixirls.settings {
          dialyzerEnabled = true,
          dialyzerWarnOpts = { 'no_opaque' },
          enableTestLenses = false,
          mixEnv = 'dev',
        },
      },
      projectionist = {
        enable = true,
      },
    }
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
