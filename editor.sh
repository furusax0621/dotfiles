#!/bin/bash

dir=$(cd "$(dirname "${0}")" && pwd)

# VSCodeがインストール済であれば環境設定を同期する
if type code >/dev/null 2>&1; then
    # 拡張機能をインストール
    "${dir}/vscode/install-vscode-extensions.sh"
    # settings.jsonを同期
    ln -sf "${dir}/vscode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
fi

# Vimの環境設定を同期する
VIMPATH=${HOME}/.vim
if [ ! -d "${VIMPATH}" ]; then
    mkdir "${VIMAPTH}"
fi
ln -sf "${dir}/vim/*.vim" "${VIMPATH}/"
ln -sf "${dir}/vim/.vimrc" "${HOME}/.vimrc"

