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
bindkey -e

export PATH=/home/xzjin/.local/bin:/home/xzjin/bin:/usr/local/texlive/2021/bin/x86_64-linux:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/snap/bin:/usr/sbin:

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey "^M" accept-line
bindkey "^U" backward-kill-line

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %B%F{197}%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
RPROMPT='${vcs_info_msg_0_}'
