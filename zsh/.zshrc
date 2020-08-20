# Note: ${DOTS_DIR:-$HOME} uses $HOME if $DOTS_DIR isn't defined yet.
source "${DOTS_DIR:-$HOME/.config}/zsh/config/env.zsh"
source "${DOTS_DIR:-$HOME/.config}/zsh/config/path.zsh"
source "${DOTS_DIR:-$HOME/.config}/zsh/config/plugins.zsh"
source "${DOTS_DIR:-$HOME/.config}/zsh/config/aliases.zsh"
source "${DOTS_DIR:-$HOME/.config}/zsh/config/settings.zsh"
source "${DOTS_DIR:-$HOME/.config}/zsh/config/key-bindings.zsh"
# source "${DOTS_DIR:-$HOME/.config}/zsh/config/prompt/prompt.zsh"
source "${DOTS_DIR:-$HOME/.config}/zsh/config/completions.zsh"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
