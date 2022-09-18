export TERM=xterm-256color
export EDITOR="/usr/bin/vim"
export GREP_COLOR='3;33'
export GOROOT=/usr/lib/go/src
export GOPATH=/home/andro/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=/root/.local/bin:/home/andro/.local/bin:/root/.local/bin:"

# Not all servers have terminfo for rxvt-256color. :<
#if [ "${TERM}" = 'rxvt-256color' ] && ! [ -f '/usr/share/terminfo/r/rxvt-256color' ] && ! [ -f '/lib/terminfo/r/rxvt-256color' ] && ! [ -f "${HOME}/.terminfo/r/rxvt-256color" ]; #then
#    export TERM='rxvt-unicode'
#fi
