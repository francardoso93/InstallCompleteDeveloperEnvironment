# TOOD: brewfile
# brew (wich also install xcode command line tools)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/francisco.cardoso/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
# git
brew install git
# chrome
brew install --cask google-chrome
# vscode
brew install --cask visual-studio-code
# slack
brew install --cask slacks
# mas (allows installing apps from the appstore)
brew install mas
# xcode
mas install 497799835