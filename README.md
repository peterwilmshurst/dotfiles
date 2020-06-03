# Mac Setup 

## .dot files

This repository contains my personal dotfiles. They are stored here for convenience so that I may quickly access them on new machines or new installs. Also, others may find some of my configurations helpful in customising their own dotfiles.

I use the [git bare repository method](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) for managing my dotfiles. 

Once you have initiated a new bare repository (thanks [DistroTube](https://www.youtube.com/watch?v=tBoLDpTWVOM&t=855s)) browse to the configuration file you’d like to push to the repo and run the following commands:

$ config add /path/to/file
$ config commit -m "A short message"
$ config push

**Contents**\
Version 1.0

- .zshrc
- vscode user settings
- vscode extensions
    - [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
    - [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
    - [Vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
    - [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)

## Homebrew
Install [Homebrew](https://brew.sh)

*$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"*

**Once homebrew has been installed, install the following brew cask packages:**

*$ brew cask install visual-studio-code*\
*$ brew cask install postman*\
*$ brew cask install google-chrome*\
*$ brew cask install firefox*\
*$ brew cask install spotify*\
*$ brew cask install skype*\
*$ brew cask install dropbox*\
*$ brew cask install mamp*

**Install the following fonts:** 
Required for ligatures and icons in shell.\
Remember to select the font from *terminal > preferences* and vscode (already included in vscode user settings) once installed.

*$ brew tap homebrew/cask-fonts*\
*$ brew cask install font-fira-code* (terminal, spaceship prompt)\
*$ brew cask install font-hack-nerd-font* (vscode, colorls) - [link](https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#option-4-homebrew-fonts). 

**Install the following brew packages:**. 

*$ brew install composer*\
*$ brew install nvm* - [link](https://medium.com/@jamesauble/install-nvm-on-mac-with-brew-adb921fb92cc). 

When installing nvm complete the following steps:

*$ mkdir ~/.nvm*.

Ensure the following has been added to your *.zshrc* file:

export NVM_DIR=~/.nvm\
source $(brew --prefix nvm)/nvm.sh

$ brew install tree

## NPM

Install gulp globally

*$ npm install --global gulp-cli*

Once installed, install the following global node packages:

**Install [spaceship prompt](https://www.robertcooper.me/elegant-development-experience-with-zsh-and-hyper-terminal)**

*$ npm install -g spaceship-prompt*

**Install [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)** - [link](https://coderwall.com/p/qmvfya/syntax-highlighting-for-zsh)\
**Note:** Configuration files not included in this repository. Manually install via the links above and make sure the source is correct in the *.zshrc* file.

## Gems

Install colorls gem
https://github.com/athityakumar/colorls

$ sudo gem install colorls

## Useful 

Show a list of all your installed Homebrew packages:
$ brew list
$ brew cask list 
