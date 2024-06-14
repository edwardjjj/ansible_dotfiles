# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "$HOME/.config/zsh/alias.zsh"
plug "$HOME/.config/zsh/env.zsh"
plug "romkatv/powerlevel10k"
plug "$HOME/.config/zsh/p10k.zsh"
plug "esc/conda-zsh-completion"
plug "$HOME/.config/zsh/fzf.zsh"
. "$HOME/.cargo/env"
# Load and initialise completion system
bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line
autoload -Uz compinit
compinit
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/edward/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/edward/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/edward/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/edward/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/edward/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/home/edward/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

