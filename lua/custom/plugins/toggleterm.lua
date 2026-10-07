-- Terminal toggling (used for GitUI)
vim.pack.add { { src = 'https://github.com/akinsho/toggleterm.nvim', version = vim.version.range '*' } }

require('toggleterm').setup {
  direction = 'tab', -- タブで開く
  close_on_exit = true, -- 終了時に自動で閉じる
}

vim.keymap.set('n', '<leader>gg', function()
  local Terminal = require('toggleterm.terminal').Terminal
  local gitui = Terminal:new {
    cmd = 'gitui',
    direction = 'tab',
    close_on_exit = true,
  }
  gitui:toggle()
end, { desc = '[G]it GUI (GitUI)' })
