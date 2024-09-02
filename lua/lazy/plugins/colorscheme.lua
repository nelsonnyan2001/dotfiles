return {
  -- Set colorscheme
  'EdenEast/nightfox.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'nordfox'
  end,
}
