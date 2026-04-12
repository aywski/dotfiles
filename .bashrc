#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\n\[\033[1;34m\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\$\[\033[0m\] '
