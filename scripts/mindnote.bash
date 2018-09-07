#!/usr/bin/env bash

if ! [ -x "$(command -v fzf)" ]; then
  echo 'Error: fzf not found in PATH.' >&2
  exit 1
fi

readonly mindnotes="/Users/piborlin/mindnotes/mindnote.txt"

select_tag(){
	cat $mindnotes | sort -u | fzf --cycle --layout=reverse --query=#
}

show_tag_notes(){
	tag=$(select_tag)
	sed -n "/$tag/,/§_/p" $mindnotes
}


#select_tag
show_tag_notes

