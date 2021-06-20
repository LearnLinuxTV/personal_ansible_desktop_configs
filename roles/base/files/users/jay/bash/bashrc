# source bash prompt
source ~/.bash/bash_prompt

# Source bash aliases
source ~/.bash/bash_aliases

# Source bash functions
source ~/.bash/bash_functions

# Env
export TERM=xterm-256color
export EDITOR=vim

# Show system information at login
if [ -t 0 ]; then
    if type -p "neofetch" > /dev/null; then
        neofetch
    else
        echo "Warning: neofetch was called, but it's not installed."
    fi
fi

# Don't add duplicate lines or lines beginning with a space to the history
HISTCONTROL=ignoreboth

# Set history format to include timestamps
HISTTIMEFORMAT="%Y-%m-%d %T "

# Correct simple errors while using cd
shopt -s cdspell

# Add /home/$USER/bin to $PATH
case :$PATH: in
	*:/home/$USER/bin:*) ;;
	*) PATH=/home/$USER/bin:$PATH ;;
esac

# Add /home/$USER/.local/bin to $PATH
case :$PATH: in
	*:/home/$USER/.local/bin:*) ;;
	*) PATH=/home/$USER/.local/bin:$PATH ;;
esac

# Enable tab completion for tmux
source /home/jay/.tmux/plugins/completion/tmux

# Add /home/$USER/.tmux/tmuxifier to $PATH
case :$PATH: in
	*:/home/$USER/.tmux/tmuxifier/bin:*) ;;
	*) PATH=/home/$USER/.tmux/tmuxifier/bin:$PATH ;;
esac

# Safetynets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# reload bash config
alias reload="source ~/.bashrc"
