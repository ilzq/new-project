# Oh-my-zsh config files!

# Path to dotfiles.
export DOTFILES=$HOME/dotfiles

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Love this theme, elegant and clean!
# https://github.com/jackharrisonsherlock/common
ZSH_THEME="common"

# Oh-my-zsh auto-update
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Command auto-correction.
ENABLE_CORRECTION="true"

# Disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Dotfiles as custom folder
ZSH_CUSTOM=$DOTFILES/zsh

# Oh-my-zsh plugins
plugins=(git
         nvm
         zsh-syntax-highlighting
         zsh-autosuggestions)

# Starting oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Use Vi mode
bindkey -v