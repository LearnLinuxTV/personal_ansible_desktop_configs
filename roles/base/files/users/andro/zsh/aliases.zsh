# Command aliases
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias back='cd $OLDPWD'
alias c='clear'
alias cd..='cd ..'
alias cp='cp -iv'
alias chmod="chmod -c"
alias chmod="chmod -c"
alias df='df -h -x squashfs -x tmpfs -x devtmpfs'
alias diff='colordiff'
alias egrep='egrep --colour=auto'
alias e="vim -O "
alias E="vim -o "
alias extip='curl icanhazip.com'
alias grep='grep --color=auto'
alias l.='ls -lhFa --time-style=long-iso --color=auto'
alias la='exa -a --color=always --group-directories-first --icons'
alias ll='exa -l --color=always --group-directories-first --icons'
alias ln='ln -iv'
alias ls=' ls -lhF --color=auto --human-readable --time-style=long-iso --classify'
alias lsmount='mount |column -t'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias ports='netstat -tulanp'
alias h='history -i 1'
alias history='history 1'
alias j='jobs -l'
alias rm='rm -iv'
alias rmdir='rmdir -v'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias ssha='eval $(ssh-agent) && ssh-add'
alias svim='sudo vim'
alias tn='tmux new -s'
alias watch='watch -d'
alias weather='curl wttr.in'
alias wget='wget -c'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias psmem='ps auxf | sort -nr -k 4'
alias grubup="sudo update-grub"
alias big="expac -H M '%m\t%n' | sort -h | nl" 
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short'              
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'
alias cat='bat --style header --style rules --style snip --style changes --style header'
alias tb='nc termbin.com 9999'
alias jctl="journalctl -p 3 -xb"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
alias grubup="sudo update-grub"
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias rmpkg="sudo pacman -Rdd"
alias mirrord="sudo reflector --latest 50 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias sudo='sudo -v; sudo '

# Replace some more things with better alternatives
alias cat='bat --style header --style rules --style snip --style changes --style header'
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'


if command -v colordiff > /dev/null 2>&1; then
    alias diff="colordiff -Nuar"
else
    alias diff="diff -Nuar"
fi

## get top process eating memory
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias mem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias cpu5='ps auxf | sort -nr -k 3 | head -5'
alias cpu10='ps auxf | sort -nr -k 3 | head -10'

## list largest directories (aka "ducks")
alias dir5='du -cksh * | sort -hr | head -n 5'
alias dir10='du -cksh * | sort -hr | head -n 10'

# Safetynets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Package management
alias update='sudo pacman -Syyy'
alias upd='sudo pacman -Sy && sudo powerpill -Su && paru -Su'
alias install='sudo pacman -S'

