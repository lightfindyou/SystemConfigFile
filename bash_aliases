#! /bin/bash
# ~/.bash_aliases: alias of bash

#start Add by xzjin
# some more ls aliases

alias ai='sudo apt install -y'
alias bk='/home/xzjin/Documents/Paper/script/antibackup.sh; /home/xzjin/Documents/Paper/script/backup.sh'
alias al='apt list --upgradable'
alias cheese='cheese -d /dev/v4l/by-id/usb-Vimicro_Corp._A4tech_USB2.0_Camera-video-index0 &> /dev/null & disown'
alias cl='clear ; clear'
alias cP='cd ~/Documents/Paper/Dedup_Compress'
#alias cD='cd /home/xzjin/Documents/Draft/JC/TPDS'
alias cD='cd /home/xzjin/Documents/Draft/flatFea/samples'

alias egrep='egrep --color=auto'
alias face='/home/xzjin/bin/detectClassmate/face.sh'
alias fgrep='fgrep --color=auto'
alias g='gnome-terminal'
alias gc='git commit -m "backup"'
alias gca='git commit -a'
alias gcp='git commit -m "backup"; git push'
alias gd='git diff'
alias gl='git log'
alias gls='git log --name-status'
alias glg='git log --oneline --graph --decorate'
alias glga='git log --oneline --graph --decorate --all'
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
alias md='make debug'
alias men='me &> /dev/null & disown'
alias mj='make -j'
alias pgrep='pgrep -l'
alias rb4='sudo kexec -l  /boot/vmlinuz-4.14.180 --append=root=UUID=619f603a-2974-44eb-b575-a2d721b64ca3 ro  quiet splash --initrd=/boot/initrd.img-4.14.180 ; sleep 1 ; sudo kexec -e'
alias rbl='sudo kexec -l /boot/vmlinuz-5.3.0-53-generic --append=root=UUID=619f603a-2974-44eb-b575-a2d721b64ca3 ro  quiet splash --initrd=/boot/initrd.img-5.3.0-53-generic ; sleep 1 ; sudo kexec -e'
#alias rm='del'
alias rerm='/usr/bin/rm'
alias s='sudo'
alias smi='sudo make install'
alias scp8='scp -oProxyCommand='"'"'ssh -W %h:%p node8'"'"''
alias ssh8='ssh -p 50022 xzjin@node8'
alias sshfs24='sshfs xzjin@node24:/home/xzjin/ /home/xzjin/24Home -o ssh_command='"'"'ssh -J xzjin@node8:50022'"'"' '
alias sshfs25='sshfs xzjin@node25:/home/xzjin/ /home/xzjin/25Home -o ssh_command='"'"'ssh -J xzjin@node8:50022'"'"' '
alias sshfs26='sshfs xzjin@node26:/home/xzjin/ /home/xzjin/26Home -o ssh_command='"'"'ssh -J xzjin@node8:50022'"'"' '
alias sshfs27='sshfs xzjin@node27:/home/xzjin/ /home/xzjin/27Home -o ssh_command='"'"'ssh -J xzjin@node8:50022'"'"' '
alias sshfs28='sshfs xzjin@node28:/home/xzjin/ /home/xzjin/28Home -o ssh_command='"'"'ssh -J xzjin@node8:50022'"'"' '
alias sshfslab='sshfs lab:/home/xzjin/ /home/xzjin/labHome'
alias sshffmpeg='ssh lab /home/xzjin/bin/detectClassmate/killFace.sh; ssh lab ffmpeg -an -f video4linux2 -s 640x480 -i /dev/v4l/by-id/usb-Vimicro_Corp._A4tech_USB2.0_Camera-video-index0 -r 10 -b:v 500k -f matroska - | ffplay -f matroska /dev/stdin'
alias sshGPU='ssh -p 50016 222.20.95.34'
alias sshpi='ssh pi@10.11.32.10'
alias sp='ssh -N -D 12333 xzjin@202.114.6.231'
#alias sshfs24='sshfs -o ssh_command="ssh -J xzjin@node7" xzjin@node24:/home/xzjin node24Home/'
alias tp='fswebcam -r 1280x720 ~/tmp.jpg'
alias tp='/home/xzjin/bin/takePic.sh'
alias upg='sudo apt upgrade'
alias wh='sudo wakeonlan -i 10.0.0.11 -p 9 3C:7C:3F:20:9E:38'
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

#fd(){
#	set -v
#	if [ "$#" -eq 1 ]; then
#		echo "find . -iname *"$1"*"
#		find . -iname "*$1*"
#	elif [ "$#" -eq 2 ]; then
#		echo "find "$1" -iname *"$2"*"
#		find "$1" -iname "*$2*"
#	elif [ "$#" -gt 2 ]; then
#		echo "find "$@
#		find $@
#	fi
#}

op() {
	awk 'FNR>='"$1"' && FNR<'"$2" $3
}

gpid() {
	ps -aux | grep -v grep | grep -e $1 | awk '{print $2}'
}
#end Add by xzjin
export VISUAL="vim"

setSSHAlias(){
#	set -o xtrace
	for nodes in {1..28}; do
		if [ "$nodes" != 8 ]; then
			alias ssh$nodes='ssh node'$nodes' -J node8:50022';
		fi
	done
}

setSSHAlias

alias rj='/home/xzjin/Documents/Paper/script/rjautologin/rjautologin.sh & disown'
