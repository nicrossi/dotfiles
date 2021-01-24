#!/bin/bash

PROMPT='[ Bootstrap ]'
source .exports

# Initialize a few things
init () {
  echo_with_prompt "Making a Projects folder in $PATH_TO_WORKSPACE if it doesn't already exist"
	mkdir -p "$PATH_TO_WORKSPACE"
	echo_with_prompt "Making a Playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
	mkdir -p "$PATH_TO_PLAYGROUND"
}

link () {
  for file in $( ls -A | grep -vE '\.exclude*|\.git$|\.gitignore|\.gitmodules|.*.md' ) ; do
    # Silently ignore errors here because the files may already exist
    ln -sv "$PWD/$file" "$HOME" || true
  done
}
