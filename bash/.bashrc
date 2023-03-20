# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export WANDB_API_KEY=""
export SINGULARITY_CACHEDIR=$WORK/.singularity/cache
export SINGULARITY_TMPDIR=$WORK/.singularity/tmp

export APPTAINER_CACHEDIR=$WORK/.singularity/cache
export APPTAINER_TMPDIR=$WORK/.singularity/tmp

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias tocodis='cd $HOME/codis'
alias tomaeva='cd $HOME/visual-prompting'

alias codis='source $WORK/virtualenvs/codis/bin/activate'
alias maeva='source $WORK/virtualenvs/maeva/bin/activate'

alias codis_out='cat $(ls -rt $WORK/projects/codis/slurm/*.out | tail -n1)'
alias codis_err='cat $(ls -rt $WORK/projects/codis/slurm/*.err | tail -n1)'

alias maeva_out='cat $(ls -rt $WORK/projects/maeva/slurm/*.out | tail -n1)'
alias maeva_err='cat $(ls -rt $WORK/projects/maeva/slurm/*.err | tail -n1)'

alias myshare='sshare --all | grep dziadzio'
alias homespace='du -ahd1 $HOME | sort -rh'
alias myjobs='squeue -u whoami -o "%.16i %.9P %.26j %.8T %.10M %.8l %.6D %.20S %R"'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/conda/etc/profile.d/conda.sh" ]; then
        . "/opt/conda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

