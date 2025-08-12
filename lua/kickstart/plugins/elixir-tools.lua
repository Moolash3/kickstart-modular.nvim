return {
  'elixir-tools/elixir-tools.nvim',
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local elixir = require 'elixir'
    local elixirls = require 'elixir.elixirls'

    elixir.setup {
      nextls = { enable = true, spitfire = true },
      elixirls = {
        enable = false,
        settings = elixirls.settings {
          dialyzerEnabled = false,
          dialyzerFormat = 'dialyzer_long',
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
