# Adds fuzzy finding for git
#
# Adds keybindings:
#   - ga:   interactive git add selector
#   - glo:  interactive git log viewer
#   - gi:   interactive git ignore generator
#   - gd:   interactive git diff viewer
#   - grh:  interactive git reset head <file> selector
#   - gfc:  interactive git checkout <file> selector
#   - gss:  interactive git stash viewer
#   - gclean: interactive git clean selector
#
# Bindings can be changed by defining variables, for example:
#   forgit_log=glo
zplug 'wfxr/forgit'
