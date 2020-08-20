source "$HOME/.zplug/init.zsh"

for file in "${DOTS_DIR:-$HOME/.config}"/zsh/plugins/**/*plugin.zsh; do
  source "$file"
done

# zplug check returns true if all packages are installed. Run install if false.
if ! zplug check; then
  zplug install
fi

# Source plugins and add commands to the PATH
zplug load
