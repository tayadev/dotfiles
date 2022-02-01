export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

export ZDOTDIR=$XDG_CONFIG_HOME/zsh

export GIT_CONFIG_GLOBAL=$XDG_CONFIG_HOME/gitconfig

export GNUPGHOME=$XDG_DATA_HOME/gnupg

export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority

export PYTHONSTARTUP=$XDG_CONFIG_HOME/pythonrc

export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm

export WGETRC=$XDG_CONFIG_HOME/wgetrc

export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle

[[ $(tty) == "/dev/tty1" ]] && startx /usr/bin/bspwm
