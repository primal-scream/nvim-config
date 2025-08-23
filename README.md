# My Neovim Configuration

kickstart.nvimをベースにした個人用のNeovim設定

## セットアップ

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


