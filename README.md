# My Neovim Configuration

kickstart.nvimをベースにした個人用のNeovim設定

## セットアップ

### 事前Install
- Neovim 0.12 以上 (プラグイン管理に組み込みの `vim.pack` を使用)
- ripgrep, fd (Telescope の検索)
- tree-sitter-cli (nvim-treesitter のパーサーのビルド)
- gitui (`<leader>gg`)

```bash
brew install neovim ripgrep fd tree-sitter-cli gitui
```

### LSP サーバー
使うサーバーは `init.lua` の `servers` に明示的に書く。Mason による自動インストール・自動有効化は使わない。
サーバー本体は PATH 上にあればよい (`:Mason` で入れたものも PATH に追加される)。

- `lua_ls`, `stylua`, `pyright`, `vtsls`, `tailwindcss`, `biome`, `astro`, `jsonls`, `hls`, `omnisharp`: `:Mason` で手動インストール
- `gopls`: `go install golang.org/x/tools/gopls@latest`
- `fastapi_lsp`: `fastapi-lsp` を別途インストール

### 自分用の追加プラグイン
`lua/custom/plugins/*.lua` に置く (`init.lua` は本家との差分を小さく保つ)。

### 初回設定
```bash
cd ~/.config/nvim

# 自分のリポジトリをremoteに設定
git remote set-url origin https://github.com/あなたのユーザー名/nvim-config.git

# kickstart.nvimをupstreamに追加
git remote add upstream https://github.com/nvim-lua/kickstart.nvim.git

# 初回push
git add .
git commit -m "Add personal customizations"
git push origin master
```

### 他のマシンでの使用
```bash
git clone https://github.com/あなたのユーザー名/nvim-config.git ~/.config/nvim
```

## 日常の使い方

### 設定を変更・保存
```bash
# 変更をcommit & push
git add .
git commit -m "Update configuration"
git push origin master
```

### kickstart.nvimの更新を取り込む
```bash
# 本家の更新をチェック
git fetch upstream
git log --oneline --graph upstream/master

# 更新をマージ
git merge upstream/master
git push origin master
```

## ベース
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) - A launch point for your personal nvim configuration


