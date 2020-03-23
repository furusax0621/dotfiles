#!/bin/bash

# 拡張機能のリストをファイルから取得する
dir=$(cd "$(dirname "${0}")" && pwd)
extensions=$(cat "${dir}/vscode-extensions")

# 拡張機能を順にインストールする
for ext in ${extensions}; do
    code --install-extension "${ext}"
done

