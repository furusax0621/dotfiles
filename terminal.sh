#!/bin/zsh

# カラーテーマをIcebergに変更
PROFILE='Iceberg'
CURR_PATH=$(cd "$(dirname "${0}")" && pwd)
EXEC_PATH="$CURR_PATH/terminal/"
CURRENT_PROFILE="$(defaults read com.apple.terminal 'Default Window Settings')"
if [ "${CURRENT_PROFILE}" != "${PROFILE}" ]; then
    open "$EXEC_PATH$PROFILE.terminal"
    defaults write com.apple.Terminal "Window Settings" -dict
    defaults write com.apple.Terminal "Default Window Settings" -string "$PROFILE"
    defaults write com.apple.Terminal "Startup Window Settings" -string "$PROFILE"
fi
defaults import com.apple.Terminal "$EXEC_PATH$PROFILE.plist"

# Preztoのインストール
# clone
git clone --recursive https://github.com/furusax0621/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# rcfileを適用
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# ログインシェルをzshに変更
chsh -s /bin/zsh
