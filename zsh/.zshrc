if [ -z "$DISPLAY" ]; then 
  exec niri-session
fi

fastfetch

# Simple aliases
alias zshe="nvim ~/.dotfiles/zsh/.zshrc"
alias kittye="nvim ~/.dotfiles/kitty/kitty.conf"
alias nirie="nvim ~/.dotfiles/niri/config.kdl"

alias cb="cargo build"
alias cr="cargo run"
alias r="reboot"
alias pf="systemctl poweroff"

# Advanced aliases
rj() {
  "./target/debug/$1"
}

# Path & prompt
PROMPT='%{%F{245}%}%n%{%F{245}%}:%{%F{250}%}%~%{%F{250}%}$ '

# GO
export GOPATH="$HOME/.local/share/go"
export PATH="$GOPATH/bin:$PATH"

# RUST
export CARGO_HOME="$HOME/.local/share/cargo"
export PATH="$CARGO_HOME/bin:$PATH"
