return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    event = 'VimEnter',
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
      }
      vim.cmd.colorscheme 'catppuccin'

      vim.api.nvim_create_user_command('Trans', function()
        local current_transparency = package.loaded['catppuccin'].options.transparent_background
        require('catppuccin').setup { transparent_background = not current_transparency }
        vim.cmd.colorscheme 'catppuccin'
      end, {})

      vim.keymap.set('n', '<leader>tc', function()
        local current_flavour = package.loaded['catppuccin'].options.flavour
        if current_flavour == 'mocha' then
          require('catppuccin').setup {
            flavour = 'latte',
            transparent_background = false
          }
        else
          require('catppuccin').setup {
            flavour = 'mocha',
            transparent_background = true
          }
        end
        vim.cmd.colorscheme 'catppuccin'
      end, { desc = 'Toggle Catppuccin flavour' })
    end,

  },
}

