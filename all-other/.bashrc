#
# ~/.bashrc
#
#vim mode
set -o vi

#for pywal 
(cat ~/.cache/wal/sequences &)


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
