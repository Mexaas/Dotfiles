fastfetch

# Simple aliases
alias zshe="nvim ~/.zshrc"
alias alae="nvim ~/.config/alacritty/alacritty.toml"
alias r="reboot"
alias pf="systemctl poweroff"
alias mexvim="NVIM_APPNAME=mexvim nvim"

# Advanced aliases
jr() {
  java -cp "target/classes" "com.mexaa.$1"
}

# Path & prompt
PROMPT='%{%F{165}%}%n%{%F{213}%}:%{%F{219}%}%~%{%f%}$ '

# GO
export GOPATH="$HOME/.local/share/go" >> ~/.zshrc
export PATH="$GOPATH/bin:$PATH" >> ~/.zshrc

# RUST
export CARGOPATH="$HOME/.local/share/cargo"
export PATH="$HOME/.local/share/cargo/bin:$PATH"

# SYSTEM
export M2PATH="$HOME/.local/share/m2"
export NVPATH="$HOME/.config/nvidia/nvidia-settings-rc"
export GNUPGPATH="$HOME/.local/share/gnupg"
