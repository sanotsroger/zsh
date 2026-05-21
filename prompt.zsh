# ~/.config/zsh/prompt.zsh

# Prevent Python virtualenv from polluting the prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

eval "$(starship init zsh)"

# Shell integrations
eval "$(fzf --zsh)" # Ctrl + r
