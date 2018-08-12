export ZSH=/Users/sebastian/.oh-my-zsh

#python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

#theme
ZSH_THEME="clean"

#correction
ENABLE_CORRECTION="true"

#tab title
DISABLE_AUTO_TITLE="true"

#plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh

#editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

#aliases
alias torepos="cd ~/projects/"
alias jbook="nocorrect jupyter notebook"
alias activate='source venv/bin/activate'

nametab() {
    echo -ne "\e]1;$1\a"
}

jslides() {
    jupyter nbconvert $1 --to slides --post serve
}

#lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
