#!/usr/bin/env bash

for file in "${DOTS_DIR:-$HOME/.config}/tmux/config/*.tmux"; do
  tmux source-file "$file"
done
exit
