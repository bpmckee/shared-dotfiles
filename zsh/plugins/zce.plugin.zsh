# Like vim's easymotion plugin for zsh.
zplug "hchbaw/zce.zsh"

# TODO: change from ctrl-X, z to something easier like 's' in normal mode
bindkey "^Xz" zce
zstyle ':zce:*' fg 'fg=white,bold'
zstyle ':zce:*' bg 'fg=7'
zstyle ':zce:*' prompt-char '%{\e[1;32m%}Character:%{\e[0m%} '
zstyle ':zce:*' prompt-key '%{\e[1;32m%}Key:%{\e[0m%} '
