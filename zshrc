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

autoload -U select-word-style
select-word-style bash
