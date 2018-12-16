#!/bin/bash
function gitBranchWithBrackets {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\[\e[01;37m\][\t]\[\e[0m\]\[\e[00;37m\] [\[\e[41m\]\[\e[97m\]\u@$(hostname -f)\[\e[49m\]\[\e[0m\]\[\e[00;37m\]:\w]\[\e[0m\]\[\e[00;33m\]\$(gitBranchWithBrackets)\[\e[0m\]\[\e[00;37m\]\[\e[0m\]\n\\$ "

alias ll="ls -lhA"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias c="clear"
alias h="cd ~"
alias fhere="find . -name "
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias mkdir="mkdir -pv"
alias datedir='mkdir -pv `date -u +"%Y%m%d%H%M%S%3N"`'
