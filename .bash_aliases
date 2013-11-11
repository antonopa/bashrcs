# some more ls aliases
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable --group-directories-first'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias gi='gvim'

gcovflags="--coverage -ftest-coverage -fprofile-arcs"
alias qgcov='qmake "QMAKE_CXXFLAGS=$gcovflags" "QMAKE_LFLAGS=$gcovflags"'
alias cgrep='grep --color=auto -nH'

alias whatsplayin='banshee --query-artist --query-title'


alias sacman='sudo pacman'
alias make='make -j16'

alias grep='grep -I --exclude=tags --color=auto -n'
alias egrep='egrep -I --exclude=tags --color=auto -n'

alias sdbus='dbus --system'

alias onemake='make -j1'

alias toff='sudo synclient TouchpadOff=1' 
alias grepSize="'egrep' -v \"^[0-9]*\.*[0-9]*K\" |'egrep' --color=auto \"^[0-9]*\.*[0-9]*[GM]|$\""

alias findBigs="du -sh * .[a-zA-Z]*|grepSize"

alias gdb="gdb -q"

alias remake="make clean && make"
