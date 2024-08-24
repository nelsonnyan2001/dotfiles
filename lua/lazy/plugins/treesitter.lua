return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'bash', 'c', 'go', 'gomod', 'gowork', 'gosum', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'css' },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
