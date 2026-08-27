vim.g.vimtex_view_method = 'sioyek'
-- vim.g.vimtex_view_general_viewer = 'okular'
-- vim.g.vimtex_view_general_options = '@pdf'
vim.g.vimtex_compiler_method = 'latexmk'

return {
  {
    'lervag/vimtex',
    lazy = false,
  },
}
