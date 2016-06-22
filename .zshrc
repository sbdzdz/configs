ZSH=$HOME/.oh-my-zsh
ZSH_THEME="3den"

# 256 colors support
#export TERM="xterm-256color"

# if you do a 'rm *', zsh will give you a sanity check!
setopt RM_STAR_WAIT
setopt interactivecomments

# zsh has a spelling corrector
setopt CORRECT

# source
source $ZSH/oh-my-zsh.sh

# custom aliases
alias emacs="emacs -nw"
alias r="R"
alias napiprojekt="python2.7 /usr/bin/napiprojekt.py"
alias matlab="sudo /usr/local/MATLAB/R2012b/bin/matlab"
alias tovagrant="cd /home/sebastian/sparkvagrant/"
alias tothesis="cd /home/sebastian/Dokumenty/IS/Thesis/Text"
alias concraft="sudo ~/.cabal/bin/concraft-pl tag ~/.cabal/bin/model.gz"
alias tothesis="cd /home/sebastian/Dokumenty/IS/Thesis/text"
alias python3="python3.5"
alias tolm="cd /home/sebastian/Dokumenty/IS/Thesis/language-models"
alias toscripts="cd /home/sebastian/Dokumenty/IS/Thesis/language-models/scripts"
