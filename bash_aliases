#! /bin/bash
# ~/.bash_aliases: alias of bash

#start Add by xzjin
# some more ls aliases

alias ai='sudo apt install -y'
alias cheese='cheese &> /dev/null & disown'
alias cl='clear ; clear'
alias cP='cd ~/Documents/Paper'
alias cD='cd ~/Documents/Paper/Draft/awn/'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias gc='git commit -m "backup"'
alias gca='git commit -a'
alias gcp='git commit -m "backup"; git push'
alias gd='git diff'
alias gp='git push'
alias grep='grep --color=auto'
alias gs='git status'
alias l='ls -C'
alias la='ls -A'
alias lb='find . -path ./.sync -prune -o -path ./PaperFromLiuHaiKun -prune -o -path ./课外阅读 -prune -o -path ./课程相关 -prune -o -path ./论文笔记 -prune -o -path ./书 -prune -o -path ./doc -prune -o  -type f'
alias ld='ls -ld */'
alias lg='ls --group-directories-first'
alias ll='ls -lh'
alias ls='ls --color=auto'
alias m='make'
alias men='me &> /dev/null & disown'
alias pgrep='pgrep -l'
alias rb4='sudo kexec -l  /boot/vmlinuz-4.14.180 --append=root=UUID=619f603a-2974-44eb-b575-a2d721b64ca3 ro  quiet splash --initrd=/boot/initrd.img-4.14.180 ; sleep 1 ; sudo kexec -e'
alias rbl='sudo kexec -l /boot/vmlinuz-5.3.0-53-generic --append=root=UUID=619f603a-2974-44eb-b575-a2d721b64ca3 ro  quiet splash --initrd=/boot/initrd.img-5.3.0-53-generic ; sleep 1 ; sudo kexec -e'
#alias rm='del'
alias rerm='/usr/bin/rm'
alias s='sudo'
alias smi='sudo make install'
alias sone='source /opt/intel/oneapi/setvars.sh'
alias ssh1='ssh xzjin@211.69.198.36'
alias ssh2='ssh xzjin@211.69.198.37'
alias ssh6='ssh xzjin@211.69.198.29'
alias ssh7='ssh xzjin@node7'
alias ssh10='ssh xzjin@211.69.198.34'
alias ssh11='ssh -p 50011 xzjin@211.69.198.37'
alias ssh14='ssh -t xzjin@211.69.198.36 ssh node14'
alias ssh18='ssh -t xzjin@211.69.198.36 ssh node18'
alias ssh19='ssh -t xzjin@211.69.198.36 ssh node19'
alias ssh20='ssh -t xzjin@211.69.198.36 ssh node20'
alias ssh22='ssh -t xzjin@211.69.198.36 ssh node22'
#alias ssh24='ssh -t xzjin@211.69.198.36 ssh node24'
alias ssh24='ssh -t xzjin@node7 ssh node24'
alias sshfs24='sshfs node24:/home/xzjin/ /home/xzjin/node24Home -o ssh_command='"'"'ssh -J node7'"'"' '
alias sshGPU='ssh -p 50016 jxz@222.20.95.34'
alias sshpi='ssh pi@10.11.32.10'
#alias sshfs24='sshfs -o ssh_command="ssh -J xzjin@node7" xzjin@node24:/home/xzjin node24Home/'
alias sshv='ssh xzjin@45.77.34.76'
alias upg='sudo apt upgrade'
# alias fortune='fortune | cowsay'
#alias sshfs24='sshfs -o nonempty xzjin@211.69.198.36:/home/xzjin/node24Home tmp/'
#alias sshfs24='sshfs -o nonempty xzjin@node7:/home/xzjin/node24Home node24Home/'

dfs() {
	sudo debugfs -R "$1 $2" /dev/sdb4
}

umc() {
        sudo umount /dev/pmem0
        sudo mount /dev/pmem0 /home/xzjin/pmem0/
        sudo dmesg -C
        cd /home/xzjin/pmem0
}

upd() {
        sudo apt update
        sudo apt list --upgradable
}

xo() {
	xdg-open "$1" &> /dev/null & disown
}

rm() {
	/usr/bin/cp -rf $@ ~/.del
	/usr/bin/rm -rf $@ 
}

rn() {
	find $1 \( -name "*|*" -o -name "*\<*" -o -name "*\>*" -o -name "*\:*" -o -name "*&*" -o -name "* *" -o -name "*\\\*" -o -name "*\?*" -o -name "*]*" -o -name "*[*" -o -name "*\**"  \) -exec rename 's/[<>:& "\\|?*]/_/g' {} +
	find $1 -exec rename 's/__/_/g' {} +
	find $1 -exec rename 's/__/_/g' {} +
}

reCam(){
	if [ "$#" -ne 1 ]; then
		echo "Illegal number of parameters"
		echo "Usage: reCam host"
	else
	ssh $1 ffmpeg -an -f video4linux2 -i /dev/video0 -r 10 -b:v 500k -f matroska - | mplayer - -idle -demuxer matroska
	fi
}

fd(){
	set -v
	if [ "$#" -eq 1 ]; then
		echo "find . -iname *"$1"*"
		find . -iname "*$1*"
	elif [ "$#" -eq 2 ]; then
		echo "find "$1" -iname *"$2"*"
		find "$1" -iname "*$2*"
	elif [ "$#" -gt 2 ]; then
		echo "find "$@
		find $@
	fi
}

#end Add by xzjin
