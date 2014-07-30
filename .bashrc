HISTCONTROL=ignoreboth    # History storage
HISTFILESIZE=2000         # History storage
HISTSIZE=1000             # History storage
shopt -s histappend       # Avoid overwriting history file
shopt -s checkwinsize     # Wrap lines after resize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#### punch

punch() {
  mkdir -p $(dirname $1)
  touch $1
}

alias touch="punch"
export -f punch

#### Aliases ####

alias la="ls -lha --color=auto --group-directories-first"
alias ls="ls -lha --color=auto --group-directories-first"
alias l="ls --color=auto --group-directories-first"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."

alias sudo="sudo "

alias e="nano"

alias rm="rm -rfI"
alias cp="cp -ai"
alias mv="mv -i"
alias mkdir="mkdir -p"

## Git

alias gs="git s"
alias gl="git l"
alias gc="git c"
alias go="git co"
alias gd="git d"

## SSH Source

sshs() {
  ssh ${*:1} "cat > /tmp/.bashrc_temp" < ~/.bashrc
  ssh -t ${*:1} "bash --rcfile /tmp/.bashrc_temp ; rm /tmp/.bashrc_temp"
}

export -f sshs

## Colors
