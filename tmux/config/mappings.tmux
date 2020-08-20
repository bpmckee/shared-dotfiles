# Reset prefix
unbind-key C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# Reload configuraiton
bind-key R run-shell ' \
    tmux source-file ~/.tmux.conf > /dev/null; \
    tmux display-message "Sourced .tmux.conf!"'

# Pane switching
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# Window switching
bind-key p previous-window
bind-key n next-window

# Switch between last window (Ctrl+a a)
#bind-key "$" last-window

# Move windows around
bind-key -r "<" swap-window -t -1
bind-key -r ">" swap-window -t +1

# Resize panes
bind-key -r H resize-pane -L 5
bind-key -r J resize-pane -D 5
bind-key -r K resize-pane -U 5
bind-key -r L resize-pane -R 5
unbind-key C-Up
unbind-key C-Down
unbind-key C-Left
unbind-key C-Right

# Split panes
bind-key "|" split-window -h -c "#{pane_current_path}"
bind-key "-" split-window -v -c "#{pane_current_path}"
unbind-key '"'
unbind-key %

# Improve new window binding
bind-key "c" new-window -c "#{pane_current_path}"

# Kill pane without prompt
bind-key X kill-pane

# Kill window without prompt
bind-key x kill-window
unbind-key &
