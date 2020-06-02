#------------------
# Zsh hooks
#------------------

# Enable the addition of zsh hook functions
autoload -U add-zsh-hook

# Load NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Automatically switch and load node versions when a directory has a `.nvmrc` file
load-nvmrc() {
  local node_version="$(nvm version)" # Current node version
  local nvmrc_path="$(nvm_find_nvmrc)" # Path to the .nvmrc file

  # Check if there exists a .nvmrc file
  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    # Check if the node version in .nvmrc is installed on the computer
    if [ "$nvmrc_node_version" = "N/A" ]; then
      # Install the node version in .nvmrc on the computer and switch to that node version
      nvm install
    # Check if the current node version matches the version in .nvmrc
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      # Switch node versions
      nvm use
    fi
  # If there isn't an .nvmrc make sure to set the current node version to the default node version
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
# Run load-nvmrc on initial shell load
load-nvmrc

# Open .zshrc to be edited in VS Code
alias zshrc='code ~/.zshrc'

# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"

# add .dotfiles to bare repo (no need for symlinks) - https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Add colors to terminal commands (green command means that the command is valid)
source ~/dotfiles/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh