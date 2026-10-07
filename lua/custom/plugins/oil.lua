-- File explorer that lets you edit your filesystem like a normal buffer
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

-- oil のアイコン表示用 (init.lua では Nerd Font がある場合のみ setup される)
if not _G.MiniIcons then require('mini.icons').setup() end

require('oil').setup {
  view_options = { show_hidden = true },
}

-- vim-vinegarスタイル: 通常のバッファで - を押したらOilを開く
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
