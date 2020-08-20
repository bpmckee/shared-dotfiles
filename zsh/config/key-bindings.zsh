##### General keybindings #####

# Get the delete key to work
# https://blog.pilif.me/2004/10/21/delete-key-in-zsh/
bindkey '^[[3~'  delete-char
bindkey '^[3;5~' delete-char

# Home/end: https://stackoverflow.com/a/8645267/1973105
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line


##### Vim keybindings #####

# Use vim-like keybindings.
bindkey -v

# Make jk work like Escape to switch from insert to normal mode
bindkey -M viins 'jk' vi-cmd-mode

# While in insert mode, delete the character before the cursor
bindkey '^?' backward-delete-char   # Delete key
bindkey '^h' backward-delete-char   # Ctrl+h

# While in insert mode, delete the word before the cursor
bindkey '^w' backward-kill-word     # Ctrl+w

# Use Ctrl+V to edit a command in vim.
zle -N edit-command-line
autoload -Uz edit-command-line
bindkey -M vicmd '^v' edit-command-line

# Delay switching modes 10ms for sequences like 'jk' to work
KEYTIMEOUT=10
