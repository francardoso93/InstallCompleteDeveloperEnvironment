# TODO: brewfile
# brew (wich also install xcode command line tools)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/francisco.cardoso/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
# git
brew install git
git config --global user.name "Francisco Cardoso"
git config --global user.email "francardoso@outlook.com"
# chrome
brew install --cask google-chrome
# vscode
brew install --cask visual-studio-code
# slack
brew install --cask slacks
# Ruby Bundler
sudo gem install bundler:2.4.13
# mas (allows installing apps from the appstore)
brew install mas
# xcode (Make sure you're properly logged in the App Store before running this)
mas install 497799835
# xcode-select (Required by fastlane)
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
# nodejs
brew install node
# yarn
npm install -g yarn
# bitwarden (not so simple, still didn't make it work)
# curl -Lso bitwarden.sh "https://func.bitwarden.com/api/dl/?app=self-host&platform=linux" && chmod 700 bitwarden.sh
# ./bitwarden.sh install # Bitwarden instance: vault.bitwarden.com