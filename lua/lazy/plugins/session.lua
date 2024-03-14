return {
  'rmagatti/auto-session',
  event = 'VimEnter',
  dependencies = {
    'nvim-neo-tree/neo-tree.nvim',
  },
  config = function()
    vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    require('auto-session').setup {
      pre_save_cmds = { 'Neotree close' },
      post_restore_cmds = { 'Neotree filesystem show' },
    }
  end,
}
