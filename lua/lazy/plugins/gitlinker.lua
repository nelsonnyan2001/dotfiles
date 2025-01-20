return {
  'linrongbin16/gitlinker.nvim',
  cmd = 'GitLink',
  opts = {
    router = {
      browse = {
        ['altssh.gitlab.com'] = 'https://gitlab.com/'
          .. '{_A.ORG}/'
          .. '{_A.REPO}/blob/'
          .. '{_A.REV}/'
          .. '{_A.FILE}'
          .. '#L{_A.LSTART}'
          .. "{(_A.LEND > _A.LSTART and ('-L' .. _A.LEND) or '')}",
      },
    },
  },
  keys = {
    { '<leader>gl', '<cmd>GitLink<cr>', mode = { 'n', 'v' }, desc = 'Yank git link' },
    { '<leader>gL', '<cmd>GitLink!<cr>', mode = { 'n', 'v' }, desc = 'Open git link' },
  },
}
