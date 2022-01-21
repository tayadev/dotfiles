mkdir -p $XDG_CACHE_HOME/zsh
HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history

ZSH_COMPDUMP=$XDG_CACHE_HOME/zsh/zcompdump
SPACESHIP_CHAR_SYMBOL="λ "

zshupdateplugins() {
    where antibody > /dev/null
    if [ $? -ne 0 ]; then
        echo "Installing antibody"
        curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
    fi
    antibody bundle < $ZDOTDIR/plugins.txt > $ZDOTDIR/pluginbundle.sh;
    zshreload
}

zshreload() { source $ZDOTDIR/.zshrc; }

if [ -r $ZDOTDIR/pluginbundle.sh ]; then
    source $ZDOTDIR/pluginbundle.sh
else
    zshupdateplugins
fi

alias ls='ls --color=auto -a'
alias c='clear;ls'
alias dots='git --git-dir=$HOME/.dots-git/ --work-tree=$HOME'

function battery() echo $(cat /sys/class/power_supply/BAT0/status) - $(cat /sys/class/power_supply/BAT0/capacity)%

export GPG_TTY=$(tty)
