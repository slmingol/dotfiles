# Case insensitive Globbing
setopt extendedglob
unsetopt CASE_GLOB


## Completions
autoload -U compinit
compinit -C

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Other stuff
export TERM=xterm-256color

export PATH=$PATH:~/.local/bin/

. ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
