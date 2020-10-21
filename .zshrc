#if [ "$TMUX" = "" ]; then tmux attach -t main || tmux new -s main; fi
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=.:$PATH

# Datasetlerin path
export DATA_PATH="/home/ayb/Documents/data"

# Path to your oh-my-zsh installation.
export ZSH="/home/ayb/.oh-my-zsh"

export EDITOR='nvim'

ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=90

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    common-aliases 
    extract
    docker
    docker-compose
    tmux
    )

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd" && dotfiles push'
alias nvs='nvidia-smi'

alias shconfig='nvim ~/.zshrc'
alias xconfig='nvim ~/.xprofile'
#alias iconfig='nvim ~/.config/i3/config'
#alias bconfig='nvim ~/.config/polybar/config'
alias vconfig='vim ~/.vimrc'
alias tmuxconfig='nvim ~/.tmux.conf'
alias nvimconfig='nvim ~/.config/nvim/*.{vim,json}'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'
alias rconfig='nvim ~/.config/ranger/rc.conf'


alias cl='clear'
alias open='xdg-open'
alias ca='conda activate'
alias cda='conda deactivate'


alias vimm='/usr/bin/vim'
alias vim='nvim'
alias mux='tmuxinator'



source $ZSH/oh-my-zsh.sh

zstyle ":completion:*" matcher-list '' #disable fuzzy tab completion


unalias rm #common aliases plugininde rm'i override etmis her zaman onay almak icin



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
 __conda_setup="$('/home/ayb/.local/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
 if [ $? -eq 0 ]; then
     eval "$__conda_setup"
 else
     if [ -f "/home/ayb/.local/conda/etc/profile.d/conda.sh" ]; then
         . "/home/ayb/.local/conda/etc/profile.d/conda.sh"
     else
         export PATH="/home/ayb/.local/conda/bin:$PATH"
     fi
 fi
 unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
