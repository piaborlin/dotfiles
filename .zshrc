# Path to your oh-my-zsh installation.
export ZSH=/Users/piaborlin/.oh-my-zsh

ZSH_THEME="agnoster"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export ELIXIR='/usr/local/Cellar/elixir/1.2.4'
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home'
export RVM="$HOME/.rvm/bin"
export PATH=$PATH:$ELIXIR/bin:$JAVA_HOME:$RVM

source $ZSH/oh-my-zsh.sh

# Example aliases
alias mex='iex -S mix phoenix.server'
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

