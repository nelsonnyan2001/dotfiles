return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'clojure',
        'c',
        'fennel',
        'go',
        'gomod',
        'gowork',
        'gosum',
        'html',
        'lua',
        'markdown',
        'vim',
        'vimdoc',
        'css',
        'typescript',
        'tsx',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
