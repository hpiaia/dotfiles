# ---
# * Exports
# ---

export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

export ZSH="/Users/hpiaia/.oh-my-zsh"


# ---
# * Zsh Configuration
# ---

ZSH_THEME="robbyrussell"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

unsetopt PROMPT_SP


# ---
# * Aliases
# ---

# Git
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"


# ---
# * Plugins
# ---
