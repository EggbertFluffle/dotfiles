bindkey -v
export KEYTIMEOUT=1
export EDITOR="nvim"

alias ls="ls --color=auto"
alias la="ls -Alh --color=auto"
alias cd="z"
alias mkdir="mkdir -p"
alias "hostname -s"="hostname"

alias sshsystems="ssh hadiambrosio@cs2303.wpi.edu"
alias sshpi="ssh ssh.eggbert.xyz"
alias fixinternet="sudo resolvconf -u && sudo sv restart dhcpcd && sudo sv restart iwd"
alias paste0x0="curl -F'file=@$1' https://0x0.st"

alias xi="sudo xbps-install -S"
alias xr="sudo xbps-remove -R"
alias fp="sudo fuzzypkg" 

alias sb="brightnessctl -d intel_backlight set"
alias kbdb="brightnessctl -d tpacpi::kbd_backlight set"
alias off="sudo shutdown -h now"
alias nosleep="killall xidlehook"
alias myip="curl http://ipecho.net/plain; echo"
alias weather="curl wttr.in"

alias neofetch="fastfetch"

PS1="%F{red}%f-[%f%F{255}%3~%f%F{red}]- (%f%F{255}" 
PS1+=$(XD $?)
PS1+="%f%F{red}) %f%B$%b "

pokemonshow

# bun completions
[ -s "/home/eggbert/.bun/_bun" ] && source "/home/eggbert/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/home/eggbert/.cargo/bin:$PATH"
export PATH="/home/eggbert/.local/src/sl/bin:$PATH"
export PATH="/home/eggbert/.local/src/fastfetch/build:$PATH"
export PATH="/home/eggbert/.local/src/zig-linux-x86_64-0.12.0:$PATH"
export PATH="/home/eggbert/.local/src/VSCode-linux-x64:$PATH"

source ./.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"

# .NET enviorment variables
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

export PATH="/home/eggbert/.local/src/pixelorama/linux-64bit:$PATH"
export PATH="/home/eggbert/.local/src/LibreSpriteAppImage:$PATH"
export PATH="/home/eggbert/.local/src/zed.app/bin:$PATH"

# Created by `pipx` on 2024-08-04 03:18:28
export PATH="$PATH:/home/eggbert/.local/bin"

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/lib64/pkgconfig"
