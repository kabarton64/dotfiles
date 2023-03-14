#!/bin/bash

link() {
	rm -f ~/.vimrc ~/.inputrc
	ln -sf ~/.dotfiles/.vimrc ~/.vimrc
	ln -sf ~/.dotfiles/.inputrc ~/.inputrc
}

unlink() {
	rm -f ~/.vimrc ~/.inputrc
	cp ~/.dotfiles/.vimrc ~/.vimrc
	cp ~/.dotfiles/.inputrc ~/.inputrc
}

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 (link|unlink)"
  exit 1
fi

# Actually link or unlink here......

if [[ $1 != "link" && $1 != "unlink" ]]; then
	echo "Invalid subcommand $1."
	echo "Usage: $0 (link|unlink)"
	exit 1
fi

$1
