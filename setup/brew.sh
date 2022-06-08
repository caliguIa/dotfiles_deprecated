#Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo 'Installing Homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

#Upgrade installed formulae
brew upgrade

# Save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

#Tools
brew install hub
brew install gnupg
brew install python
brew install pipenv
brew install postgresql
brew install git
brew tap teamookla/speedtest
brew install speedtest
brew install cloudflare/cloudflare/cloudflared
brew install coreutils
brew install ffmpeg
brew install grep
brew install lua
brew install luarocks
brew install tmux
brew install wget
brew install yarn
brew install starship
brew install docker
brew install go
brew install --cask fig
brew install --cask google-cloud-sdk
brew install --cask ngrok
brew install --cask docker
brew install hub
brew install neovim
brew install neofetch
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
brew install tree
brew install fnm
brew install bat
brew install bottom
brew install dust
brew install exa
brew install hyperfine
brew install ripgrep
brew install tokei
brew install zoxide

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
curl -LO https://raw.githubusercontent.com/mklement0/ttab/master/ttab.rb && 

pip install pylint

brew update
brew upgrade
brew cleanup
brew doctor
brew missing

echo please run the following commands:
echo sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
echo chsh -s /opt/homebrew/bin/fish
echo set -U fish_user_paths /opt/homebrew/bin $fish_user_paths 
