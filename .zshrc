# Path to your oh-my-zsh installation.
export ZSH=/Users/piaborlin/.oh-my-zsh

ZSH_THEME="agnoster"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH="$HOME/go"
export ELIXIR='/usr/local/Cellar/elixir/1.2.4'
export PATH=$HOME/bin:$PATH:$GOPATH/bin:$ELIXIR/bin

source $ZSH/oh-my-zsh.sh

# aliases
#paths
alias tv4go='cd /Users/piaborlin/go/src/github.com/TV4'

# elexir
alias mex='iex -S mix phoenix.server'

# git
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
