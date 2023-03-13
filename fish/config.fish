if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""
alias ra='ranger'
alias sp='sudo pacman'
alias byebye='poweroff'
fish_vi_key_bindings

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/onion/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

source /opt/asdf-vm/asdf.fish
