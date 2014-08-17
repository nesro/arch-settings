# ~/.bashrc
# https://github.com/nesro/arch-settings
# https://wiki.archlinux.org/index.php/bash#Aliases

[[ $- != *i* ]] && return

PS1='[\u@\H: \w |\t|$?]\$\n'

alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'
alias vi='vim'

alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'

if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudoedit'
    alias root='sudo -i'
    alias reboot='sudo systemctl reboot'
    alias poweroff='sudo systemctl poweroff'
    alias update='sudo pacman -Su'
    alias netctl='sudo netctl'
fi

alias l='ls -lA'
alias ls='ls -hF --color=auto'
alias lr='ls -R' # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX' # sort by extension
alias lz='ll -rS' # sort by size
alias lt='ll -rt' # sort by date
alias lm='la | more'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

# safer alternative w/ timeout, not stored in history
alias rm=' timeout 3 rm -Iv --one-file-system'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'

# this is not vim :D
alias :q='exit'
