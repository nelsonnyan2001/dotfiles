return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    {
      '<leader><leader>',
      function()
        require('neo-tree.command').execute { toggle = true }
      end,
      desc = 'Toggle Explorer (cwd)',
    },
  },
  init = function()
    if vim.fn.argc(-1) == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == 'directory' then
        require 'neo-tree'
      end
    end
  end,
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
    },
    window = {
      mappings = {
        ['<space>'] = 'none',
      },
    },
  },
}
