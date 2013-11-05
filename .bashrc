# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

color_prompt=yes
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi



# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_helpers ]; then
	. ~/.bash_helpers
fi

if [ "$color_prompt" = yes ]; then
#PS1='\n\[\033[01;31m\]-- ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\] : \[\033[01;33m\]$(isGit)\n\[\033[01;31m\]|_\[\033[01;34m\] \[\033[01;34m\]\w - \[\033[01;32m\]\#\n\[\033[00m\] '
#PS1=$'[$(colorMe Blue \u)$(colorMe clear)\xe2\x88\x9e$(colorMe Cyan \h)$(colorMe clear ])[$(colorMe LightGreen \#)$(colorMe clear ]) $ '
PS1=$'[$(colorMe Blue \u)] $ $(colorMe clear) \
$(isGit) \
$(colorMe LightGreen \xe2\x86\xb3) $(colorMe "LightBlue")\w \n $(colorMe LightGray \xe2\x88\xb4) $(colorMe clear) \[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.bash_completion ] ; then
	. ~/.bash_completion
fi

export JAVA_HOME="/opt/java"
export JAVA="/opt/java/bin/java"

export PATH=$PATH:/bin:/sbin:$HOME/bin:/opt/java/bin

COMP_WORDBREAKS=${COMP_WORDBREAKS//:/}
COMP_WORDBREAKS=${COMP_WORDBREAKS//\$/}


source /usr/share/doc/pkgfile/command-not-found.bash

export EDITOR='vim'

export btzm='B4:EE:D4:E6:4B:8F'
export btn500='A0:F4:19:4C:17:76'
export iph='CC:08:E0:81:7B:73'
export sgn='38:16:D1:88:B6:AF'
export refPlatform='00:09:DD:50:8D:25'

export BROWSER='firefox'

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
[[ -z $DISPLAY && $XDG_VTNR -eq 7 ]] && exec startx

export CC=gcc


export PERL_LOCAL_LIB_ROOT="/home/aantonop/perl5";
export PERL_MB_OPT="--install_base /home/aantonop/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/aantonop/perl5";
export PERL5LIB="/home/aantonop/perl5/lib/perl5/x86_64-linux-thread-multi:/home/aantonop/perl5/lib/perl5";
export PATH="/home/aantonop/perl5/bin:$PATH";


export christian="christian.fetzer@bmw-carit.de"
export philip="philip.lorenz@bmw-carit.de"
export boss="thomas.boss@bmw-carit.de"
export mastiz="mikel.astiz@bmw-carit.de"
export me="antonopa@gmail.com"

export bluez="linux-bluetooth@vger.kernel.org"

source ~/.bash_format_patch
source ~/arc/arcanist/resources/shell/bash-completion

export PYTHONPATH="/home/aantonop/lib/python2.7"
export _JAVA_AWT_WM_NONREPARENTING=1

export GEM_HOME="/home/aantonop/.gem/ruby/2.0.0"
export PATH=$PATH:${GEM_HOME}/bin
