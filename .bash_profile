# Env variables
#export GOPATH=$HOME/code/go
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home'
export ELIXIR='/usr/local/Cellar/elixir/1.2.4'
export PATH=$PATH:$GOPATH/bin:$JAVA_HOME:$ELIXIR/bin


# Finder - show/hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Vim - sets the brew install vim version 
# alias vim='/usr/local/Cellar/vim/7.4.1525/bin/vim'

# Paths
alias tv4='cd /Users/pia/code/go/src/github.com/TV4/'

# Service aliases
alias mongod='mongod run --config /usr/local/etc/mongod.conf'
alias coverage='gocov test ./... | gocov report'
alias start_es='launchctl load /usr/local/opt/elasticsearch/homebrew.mxcl.elasticsearch.plist'
alias stop_es='launchctl unload /usr/local/opt/elasticsearch/homebrew.mxcl.elasticsearch.plist'

# Reload conf files
alias s='tmux source-file ~/.tmux.conf && source ~/.vimrc && source ~/.bash_profile'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
