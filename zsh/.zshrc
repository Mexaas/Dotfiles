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
export CARGO_HOME="$HOME/.local/share/cargo"
export PATH="$HOME/.local/share/cargo/bin:$PATH"

# SYSTEM
export M2_HOME="$HOME/.local/share/m2"
export NV_CONFIG_FILE="$HOME/.config/nvidia/nvidia-settings-rc"
export GNUPGHOME="$HOME/.local/share/gnupg"
