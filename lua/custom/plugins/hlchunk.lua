-- Highlight indent lines and the code chunk under the cursor
vim.pack.add { 'https://github.com/shellRaining/hlchunk.nvim' }

require('hlchunk').setup {
  chunk = { enable = true }, -- カーソル位置の関数・ブロックの範囲を囲んで表示
  indent = { enable = true }, -- インデントの縦線
}

-- タブ記号 (init.lua の listchars: '» ') が縦線と重なるので非表示にする
vim.opt.listchars:append { tab = '  ' }
