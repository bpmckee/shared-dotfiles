# Add enhancements like fuzzy search to the cd command
zplug "b4b4r07/enhancd", use:init.sh

if zplug check "b4b4r07/enhancd"; then
    #export ENHANCD_FILTER="fzf --height 50% --reverse --ansi --preview 'ls -l {}' --preview-window down"
    export ENHANCD_FILTER="fzf --height 25% --reverse --ansi"
    #export ENHANCD_DOT_SHOW_FULLPATH=1
fi
