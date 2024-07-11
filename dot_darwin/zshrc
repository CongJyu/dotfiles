# Written by Rain CongJyu Chen

autoload -U promptinit
autoload -U colors && colors
autoload -U compinit

PROMPT="[%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[cyan]%}%1~%{$reset_color%}]%# "

export CLICOLOR=Yes
export LSCOLORS=ExGxFxdaCxDaDahbadacec

plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-autocomplete)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export NEMU_HOME=/Users/rainchen/Coding/ics2022/nemu
export AM_HOME=/Users/rainchen/Coding/ics2022/abstract-machine
export NPC_HOME=/Users/rainchen/Coding/ics2022/npc

export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
