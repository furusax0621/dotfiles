#!/bin/bash

dir=$(cd "$(dirname "${0}")" && pwd)

# Vimの環境設定を同期する
VIMPATH=${HOME}/.vim
if [ ! -d "${VIMPATH}" ]; then
    mkdir "${VIMAPTH}"
fi
ln -sf "${dir}/vim/*.vim" "${VIMPATH}/"
ln -sf "${dir}/vim/.vimrc" "${HOME}/.vimrc"
