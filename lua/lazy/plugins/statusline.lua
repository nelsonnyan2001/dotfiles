return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_c = {},
      lualine_x = { 'filetype' },
    },
    options = {
      icons_enabled = false,
    },
  },
}
