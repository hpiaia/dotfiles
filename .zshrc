# ---
# * Exports
# ---

export GOPATH=$HOME/.go

export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$GOPATH:$PATH

export ZSH="/Users/hpiaia/.oh-my-zsh"

export GIT_EXTERNAL_DIFF=difft

# ---
# * Zsh Configuration
# ---

ZSH_THEME="ys"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

unsetopt PROMPT_SP


# ---
# * Aliases
# ---

# Git
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

# Utils
alias ls="exa"
alias cat="bat -p"


# ---
# * Plugins
# ---

