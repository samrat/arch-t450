#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Includes
source ~/.bash_aliases

PS1='[\u@\h \W]\$ '

export HISTSIZE=10000

# cd to directories faster
. /home/samrat/bin/z/z.sh

eval `keychain --quiet --eval --agents ssh id_rsa`

## Options
shopt -s globstar
set +o histexpand

## App options
export LEDGER_FILE=~/code/ledger/.hledger.journal

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

# Path
export PATH=~/.local/bin:$PATH
