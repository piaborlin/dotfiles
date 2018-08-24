export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi

# Activate command-line fuzzy finder (https://github.com/junegunn/fzf)
source "/usr/local/Cellar/fzf/0.17.4/shell/completion.bash" && source "/usr/local/Cellar/fzf/0.17.4/shell/key-bindings.bash"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Sets the variables in .env file to the environment
with-env() {
 env $(cat .env | xargs) "$@"
}
