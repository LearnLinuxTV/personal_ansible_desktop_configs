# Set history file
HISTFILE=~/.zhistory

# Set history size
HISTSIZE=1000

# Set the number of lines in $HISTFILE
SAVEHIST="${HISTSIZE}"

# Enable history search with up and down arrows
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

# All terminal sessions append to the history file immediately as commands are entered
setopt inc_append_history

# save timestamp of command and duration
setopt extended_history

# when trimming history, lose oldest duplicates first
setopt hist_expire_dups_first

# When a duplicate command is entered, remove the oldest duplicate
setopt hist_ignore_all_dups

# remove command line from history list when first character on the line is a space
setopt hist_ignore_space

# Remove extra blanks from each command line being added to history
setopt hist_reduce_blanks

# Reads the history file every time history is called
# This means that the history command will show recent entries, even between terminal sessions
setopt share_history
