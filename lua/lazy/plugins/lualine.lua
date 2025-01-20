return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local filetype = { 'filetype', icon_only = true }

    local function file_location()
      return vim.fn.expand '%'
    end

    require('lualine').setup {
      options = {
        globalstatus = true,
      },
      sections = {
        lualine_b = { file_location, 'diagnostics' },
        lualine_c = {},
        lualine_x = { filetype },
        lualine_y = {},
      },
    }
  end,
}
