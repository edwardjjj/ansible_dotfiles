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
autoload -Uz compinit
compinit
eval "$(zoxide init zsh)"
