#
# .zshrc
#

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit

# prompt_newline='%666v' PROMPT=" $PROMPT"
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}

PURE_CMD_MAX_EXEC_TIME=10
zstyle :prompt:pure:path color white
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure

#Plugins
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

###
alias sdb="xdg-settings set default-web-browser firefox.desktop"
bindkey -s '^f' 'tmux-sessionizer^M'
bindkey -s '^g' 'tmux neww tmux-cht.sh^M'
