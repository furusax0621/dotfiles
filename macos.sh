#!/bin/sh

# Dock & Dashboard
# Dockの拡大機能を有効にする
defaults write com.apple.dock magnification -bool true
# Dockのアイコンサイズ(tilesize)と拡大後のサイズ(largesize)を指定する
defaults write com.apple.dock tilesize -int 30
defaults write com.apple.dock largesize -int 70
# 最近使ったアプリケーションを表示しない
defaults write com.apple.dock show-recents -bool false
# Dashboardを無効にする
defaults write com.apple.dashboard mcx-disabled -bool true

# 名前で入れ替えた時、ディレクトリが先頭に来るようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 新規ウィンドウを開くときに、ホームディレクトリを開くようにする
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# タブバーを表示
defaults write com.apple.finder ShowTabView -bool true
# 全ての拡張子を表示
defaults write NSGlobalDomain AppleShowAllExtension -bool true

# IME
# ライブ変換を無効にする
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey 0
# 自動タイプミス補正を無効にする
defaults write com.apple.inputmethod.Kotoeri JIMPrefAutocorrectionKey 0
# 文頭の自動大文字を無効化する
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Trackpad
# タップでクリックを有効にする
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Others
# Fnキーを通常のファンクションキーとして扱う
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
# バッテリーをパーセント表示にする
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# ネットワークフォルダに.DS_Storeを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Homebrew をインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Homebrewでアプリケーションをインストール
brew cask install visual-studio-code
