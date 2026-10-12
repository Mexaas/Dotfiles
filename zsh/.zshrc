if [ -z "$WAYLAND_DISPLAY" ]; then 
  exec niri-session
fi

fastfetch

# Simple aliases
alias zshe="nvim ~/.dotfiles/zsh/.zshrc"
alias kittye="nvim ~/.dotfiles/kitty/kitty.conf"
alias nirie="nvim ~/.dotfiles/niri/config.kdl"
alias hme="nvim ~/.config/home-manager/home.nix"
alias hms="home-manager switch"
alias nixe="sudo nvim /etc/nixos/configuration.nix"
alias nixs="sudo nixos-rebuild switch"
alias nixg="sudo nix-collect-garbage -d"

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
