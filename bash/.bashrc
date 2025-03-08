# .bashrc
export WANDB__SERVICE_WAIT=300

# Source global definitions
if [ -f /etc/bashrc ]; then
       . /etc/bashrc
fi

# Source secrets
if [ -f ~/.bashrc_secrets ]; then
    source ~/.bashrc_secrets
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

to () {
  cd $HOME/repos/$1
  conda activate $HOME/conda_envs/$1
}

out () {
    cat $(find $HOME/slurm/$1 -type f -name "*.out" | sort -t_ -k2,2n | tail -n 1)
}

err () {
    cat $(find $HOME/slurm/$1 -type f -name "*.err" | sort -t_ -k2,2n | tail -n 1)
}

outs () {
    find $HOME/slurm/$1 -type f -name "*.out" | sort -t_ -k2,2n | tail -n 10
}

errs () {
    find $HOME/slurm/$1 -type f -name "*.err" | sort -t_ -k2,2n | tail -n 10
}

quiet() {
  "$@" > /dev/null 2>&1 &
}

quiet_out() {
  "$@" > out.txt 2>&1 &
}

create () {
    mkdir -p $HOME/slurm/$1
    mkdir -p $HOME/wandb/$1
    mkdir -p $HOME/hydra/$1
    conda create -n $1 python=3.11
}

diskspace () {
    du -ahd1 $1 | sort -rh
}

freeup () {
    if [ $# -ne 1 ]; then
        echo "Must provide a single directory path. Usage: freeup <directory_path>"
        return 1
    fi

    read -p "This will truncate and delete $1. Are you sure you want to continue? (y/n): " user_input

    if [ "$user_input" = "y" ] || [ "$user_input" = "Y" ]; then
        find $1 -type f ! -size 0c | parallel -X --progress truncate -s0 && rm -r $1
    fi
}

run () {
    nohup "$@" > /dev/null 2>&1 &
}

alias interactive-preemptable='srun --gres=gpu:1 -p h100-preemptable-galvani --job-name "interactive" --ntasks=1 --nodes=1 --time 12:00:00 --pty bash'
alias interactive='srun --gres=gpu:1 -p h100-galvani --job-name "interactive" --ntasks=1 --nodes=1 --mem=50G --time 12:00:00 --pty bash'
alias vscode='sbatch $HOME/vscode/allocate-galvani-vs.sh'
alias vscode-cpu='sbatch $HOME/vscode/allocate-galvani-vs-cpu.sh'
alias vscode-large='sbatch $HOME/vscode/allocate-galvani-vs-large.sh'
alias myshare='sshare --all | grep dziadzio'
alias myjobs='squeue -u dziadzio08 -o "%.16i %.25P %.70j %.8T %.10M %.8l %.6D %.20S %R"'
alias cancelall='scancel -u $USER'
alias numjobs='squeue -u dziadzio08 -o "%.16i %.25P %.26j %.8T %.10M %.8l %.6D %.20S %R" | tail -n+2 | wc -l'

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