#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


HISTSIZE=10000

# cd to directories faster
. /home/samrat/code/z/z.sh

eval `keychain --quiet --eval --agents ssh id_rsa`


## Options
shopt -s globstar
set +o histexpand


## Environment
_PS1() {
    local PRE= NAME="$1" LENGTH="$2";
    [[ "$NAME" != "${NAME#$HOME/}" || -z "${NAME#$HOME}" ]] &&
        PRE+='~' NAME="${NAME#$HOME}" LENGTH=$[LENGTH-1];
    ((${#NAME}>$LENGTH)) && NAME="/...${NAME:$[${#NAME}-LENGTH+4]}";
    echo "$PRE$NAME"
}
export PS1='\[\e[1;32m\]\h\[\e[m\]\
\[\e[1;35m\]$(_PS1 "$PWD" 30)\[\e[m\] '
