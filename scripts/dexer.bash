#!/usr/bin/env bash

if [[ ! $(which fzf) ]] &>/dev/null; then
  echo "ERROR: fzf not found in PATH"
  exit 2
fi

readonly fzf='fzf --cycle --reverse -0'
readonly iam=$(basename $0)
readonly index="$HOME/.${iam}"
readonly ex_ver=$(elixir -v|awk '/Elixir/ {print $2}')
readonly cellar=$(brew --cellar)
readonly ex_ebin="$cellar/elixir/$ex_ver/lib/elixir/ebin"

erl_libs()
{
  read -r -d '' erlb <<-'ERL'
	____ ____ _    ____ _  _ ____
	|___ |__/ |    |__| |\ | | __
	|___ |  \ |___ |  | | \| |__]
	ERL

  local erl_ver=$(
    erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  \
        -noshell \
        | tr -d '["\r]'
  )

  local erl_inst="$(ls -dt $cellar/erlang/${erl_ver}*|head -1)"
  local manpath="$erl_inst/lib/erlang/man"

  pushd $manpath 2>/dev/null
  erl -man $(find . -name "[a-z]*" \
            | cut -b8- | grep .    \
            | sort | cut -d\. -f1  \
            | $fzf --header="$erlb")
  exit 0
}

check_index()
{
  if [[ ! -e $index ]]
    then [[ ! -e $ex_ebin ]] \
      && echo "ebin dir not found" \
      && exit 61

    ls $ex_ebin|grep ^Elixir|cut -d\. -f2-|sed 's/.beam//g'|grep -v \\. >> $index
    echo "index written to: $index"
  fi
}

# ------------------------------------------------------------------------------

[[ $# == 1 ]] && [[ $1 == '-e' ]] && erl_libs

read -r -d '' exb <<-'EX'
____ _    _ _  _ _ ____
|___ |    |  \/  | |__/
|___ |___ | _/\_ | |  \
EX

check_index; module=$(cat $index | $fzf --header="$exb")

[[ -z $module ]] && exit 1
function=$(echo "IEx.Helpers.exports $module;System.halt(0)" \
  | iex | sed -e 1d -e 's/iex(1)>\ //g' | fmt -w1 | egrep -v '__' | $fzf)
[[ -z $function ]] && exit 1

clear;echo "clear; h $module.$function; System.halt(0)" | iex 
printf "%*s\n" 40 "[$module.$function]"

