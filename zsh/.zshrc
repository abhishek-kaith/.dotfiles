# ZSHPURE
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit

# prompt_newline='%666v' PROMPT=" $PROMPT"
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}

PURE_CMD_MAX_EXEC_TIME=10
# zstyle :prompt:pure:path color white
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure

#Plugins
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# History setup
setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

###
alias ls='ls --color=auto'
alias vim='nvim'
# alias sdb="xdg-settings set default-web-browser firefox.desktop"
alias sdb="xdg-settings set default-web-browser thorium-browser.desktop"
# alias pwr='sudo ryzenadj --stapm-limit=15000 --fast-limit=15000 --slow-limit=15000 --tctl-temp=80'
bindkey -s '^f' 'tmux-sessionizer^M'
bindkey -s '^g' 'tmux neww tmux-cht.sh^M'
eval "$(rbenv init - zsh)"
