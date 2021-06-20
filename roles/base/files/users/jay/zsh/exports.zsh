export TERM=xterm-256color
export EDITOR="/usr/bin/vim"
export GREP_COLOR='3;33'

# Not all servers have terminfo for rxvt-256color. :<
#if [ "${TERM}" = 'rxvt-256color' ] && ! [ -f '/usr/share/terminfo/r/rxvt-256color' ] && ! [ -f '/lib/terminfo/r/rxvt-256color' ] && ! [ -f "${HOME}/.terminfo/r/rxvt-256color" ]; #then
#    export TERM='rxvt-unicode'
#fi
