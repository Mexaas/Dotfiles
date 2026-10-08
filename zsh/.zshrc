if [ -z "$DISPLAY" ]; then
  exec niri
fi

fastfetch

# Simple aliases
alias zshe="nvim ~/.zshrc"
alias kittye="nvim ~/.config/kitty/kitty.conf"
alias nirie="nvim ~/.config/niri/config.kdl"
alias r="reboot"
alias pf="systemctl poweroff"
alias mexvim="NVIM_APPNAME=mexvim nvim"

# Advanced aliases
rj() {
  "./target/debug/$1"
}

# Path & prompt
PROMPT='%{%F{165}%}%n%{%F{213}%}:%{%F{219}%}%~%{%f%}$ '

# GO
export GOPATH="$HOME/.local/share/go" >> ~/.zshrc
export PATH="$GOPATH/bin:$PATH" >> ~/.zshrc

# RUST
export CARGO_HOME="$HOME/.local/share/cargo"
export PATH="$CARGO_HOME/bin:$PATH"
