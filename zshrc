PROMPT='%B%F{197}%n%f!%f%F{208}%D{%f}/%T%f%b:%B%F{blue}%~%f%b%# '
#PROMPT='%B%F{197}%n%f!%m%f%F{208}%D{%f}/%T%f%b:%B%F{blue}%~%f%b%# '

. /home/xzjin/.zshrc_common
. /home/xzjin/.bash_aliases

if [ -f ~/.local_aliases ]; then
	. ~/.local_aliases
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY
setopt auto_cd

autoload -U select-word-style
select-word-style bash

export PATH=/home/xzjin/.local/bin:/home/xzjin/bin:/usr/local/texlive/2021/bin/x86_64-linux:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/snap/bin:/usr/sbin:
