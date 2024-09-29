-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Delete trailing spaces on save
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Delete trailing spaces before saving the file',
  group = vim.api.nvim_create_augroup('kickstart-delete-trailing-spaces', { clear = true }),
  callback = function()
    local save_cursor = vim.fn.getpos(".")  -- Save cursor position
    vim.cmd [[%s/\s\+$//e]]
    vim.fn.setpos('.', save_cursor)  -- Restore cursor position
  end,
})
