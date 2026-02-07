return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    event = 'VimEnter',
    config = function()
      require('catppuccin').setup {
        flavour = 'latte',
      }
      vim.cmd.colorscheme 'catppuccin'

      vim.api.nvim_create_user_command('Trans', function()
        local current_transparency = package.loaded['catppuccin'].options.transparent_background
        require('catppuccin').setup { transparent_background = not current_transparency }
        vim.cmd.colorscheme 'catppuccin'
      end, {})
    end,
  },
}
