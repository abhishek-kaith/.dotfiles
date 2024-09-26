# Local Scripts
export PATH="$HOME/.scripts:$PATH"

#Rust
#. "$HOME/.cargo/env"

# Go 
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Zig
export PATH="$HOME/.zig:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Volta 

# bun completions
[ -s "/home/kai/.bun/_bun" ] && source "/home/kai/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Turso
export PATH="/home/kai/.turso:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
