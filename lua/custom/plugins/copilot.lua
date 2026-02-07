vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set('i', '<C-L>', '<plug>(copilot-accept-word)')
vim.g.copilot_no_tab_map = true

return {
  { 'github/copilot.vim' },
}
