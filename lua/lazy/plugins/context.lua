return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- Ensure treesitter is installed first
  config = function()
    require('treesitter-context').setup {
      enable = true, -- Enable treesitter-context
      max_lines = 0, -- Show context for the entire file
    }
  end,
}
