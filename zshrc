#PROMPT='%B%F{197}%n%f!%f%F{208}%D{%f}/%T%f%b:%B%F{blue}%~%f%b%# '
hostName=`hostname`
labHostName="debianLab"
if [ "$hostName" != "$labHostName" ]; then
	PROMPT='%B%F{34}%n%f!%F{160}%m%f%F{105}%D{%f}/%T%f%b:%B%F{blue}%~%f%b%# '
else
	PROMPT='%B%F{197}%n%f!%F{183}%m%f%F{208}%D{%f}/%T%f%b:%B%F{blue}%~%f%b%# '
fi

. /home/xzjin/.zshrc_common
. /home/xzjin/.bash_aliases

if [ -f ~/.local_aliases ]; then
	. ~/.local_aliases
fi

if [ -f ~/.local_settings ]; then
	. ~/.local_settings
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY
setopt auto_cd

autoload -U select-word-style
select-word-style bash
bindkey -e

export PATH=/home/xzjin/.local/bin:/home/xzjin/bin:/usr/local/texlive/2021/bin/x86_64-linux:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/snap/bin:/usr/sbin:/usr/local/go/bin:

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey "^M" accept-line
bindkey "^U" backward-kill-line
