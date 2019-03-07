#!/bin/zsh

# Preztoのインストール
# clone
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# プロンプトのテーマをpureに変更
sed -i "" -E "/zstyle ':prezto:module:prompt' theme/s/'[a-z]+'/'pure'/" "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/zpreztorc

# rcfileを適用
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# ログインシェルをzshに変更
chsh -s /bin/zsh
