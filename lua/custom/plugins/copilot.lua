-- AI coding (GitHub Copilot)
vim.pack.add { 'https://github.com/zbirenbaum/copilot.lua' }

require('copilot').setup {
  filetypes = {
    yaml = true,
    markdown = true,
  },
}

-- 補完テキストの色を見やすく調整
vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
  fg = '#808080', -- より明るいグレー
  italic = true,
})
