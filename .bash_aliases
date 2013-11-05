# some more ls aliases
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable --group-directories-first'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias gi='gvim'

alias sanon='ssh -fND localhost:6667 alan@150.140.188.149'

alias turnoffmonitor='xrandr --output VGA1 --off'

gcovflags="--coverage -ftest-coverage -fprofile-arcs"
alias qgcov='qmake "QMAKE_CXXFLAGS=$gcovflags" "QMAKE_LFLAGS=$gcovflags"'
alias cgrep='grep --color=auto -nH'

alias ct='ctags --c++-kinds=+p --fields=+iaS --extra=+q'

alias mnull='find -name Makefile* -exec rm {} \;'
alias fex='find -executable -not -type d -not -name *sh -exec rm {} \;'

alias whatsplayin='banshee --query-artist --query-title'

# git aliases
alias gmrg="git mergetool -t kdiff3"
alias grc="git rebase --continue"
alias gra="git rebase --abort"

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
