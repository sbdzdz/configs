export ZSH=/Users/sebastiandziadzio/.oh-my-zsh

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
alias readlink=greadlink
alias jbook="nocorrect jupyter notebook"
alias rg='nocorrect rg'
alias torepos="cd ~/sebastian/projects/"
alias virtualenv3='virtualenv --python=/usr/local/Cellar/python3/3.6.4_2/bin/python3.6'
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
source /Users/sebastiandziadzio/.cargo/env

#spark
export PATH=$PATH:/usr/local/spark/bin
export SPARK_HOME=/usr/local/spark
export SPARK_CLASSPATH=/usr/local/spark/lib

#ruby
eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
