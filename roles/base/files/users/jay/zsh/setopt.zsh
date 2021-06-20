# Don't beep on error
setopt no_beep

# Allow comments even in interactive shells (especially for Muness)
setopt interactive_comments

# If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt auto_cd

# don't push multiple copies of the same directory onto the directory stack
setopt pushd_ignore_dups

# When completing from the middle of a word, move the cursor to the end of the word
setopt always_to_end

# show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_menu

# any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt auto_name_dirs

# Allow completion from within a word/phrase
setopt complete_in_word

# do not autoselect the first completion entry
unsetopt menu_complete

# spelling correction for commands
setopt correct

# Stop annoying error when using asterisk in shell commands (i.e. scp server:*.txt .)
setopt nonomatch

# extended globbing, awesome!
setopt extendedGlob

# Turn on command substitution in the prompt (and parameter expansion and arithmetic expansion).
setopt promptsubst
