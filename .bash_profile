export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
