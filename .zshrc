[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# to solve the problem which is omz plugin cant install
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
source /usr/share/zinit/zinit.zsh

# to store the command history in local
HISTSIZE=1000
SAVEHIST=50000
HISTFILE=${XDG_STATE_HOME:-$HOME/.local/state}/.zsh_history
# setopt AUTO_PUSHD
zi light z-shell/H-S-MW

# zi light zsh-users/zsh-syntax-highlighting
zi ice pick"async.zsh" src"pure.zsh"
zi light sindresorhus/pure
zi light zdharma/fast-syntax-highlighting

zi light zsh-users/zsh-completions

zi ice wait lucid atload'_zsh_autosuggest_start'
zi light zsh-users/zsh-autosuggestions

zi light agkozak/zsh-z
PURE_PROMPT_SYMBOL="😊 💩 🎶 |"

alias "ra"=ranger
alias "byebye"=poweroff

export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
