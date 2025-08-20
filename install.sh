#!/bin/bash

# dotfiles 仓库目录
DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)

echo "开始安装 dotfiles..."

# zsh
ln -sf $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
echo "已安装: .zshrc"

# git
ln -sf $DOTFILES_DIR/git/.gitconfig ~/.gitconfig
echo "已安装: .gitconfig"

# vim
ln -sf $DOTFILES_DIR/vim/.vimrc ~/.vimrc
echo "已安装: .vimrc"

# tmux（可选）
if [ -f "$DOTFILES_DIR/tmux/.tmux.conf" ]; then
    ln -sf $DOTFILES_DIR/tmux/.tmux.conf ~/.tmux.conf
    echo "已安装: .tmux.conf"
fi

echo "安装完成 ✅ 请重新打开终端。"
