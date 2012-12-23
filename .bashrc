# imported from https://github.com/rf0444/hoge/blob/master/bashrc_mac.txt

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w$(__git_ps1)\[\e[0m\]\n\$ '

# export TERM=screen-256color

export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
if [ "$TERM" != "dumb" ]; then
	export LS_OPTIONS='--color=auto'
	eval `dircolors ~/.dir_colors`
fi


alias ls='gls $LS_OPTIONS -G'
alias ll='gls $LS_OPTIONS -alFG'
alias la='gls $LS_OPTIONS -AG'
alias l='gls $LS_OPTIONS -CFG'
alias lla='gls $LS_OPTIONS -laG'

alias vi=vim
alias vr='vi -R'
alias sl='gls $LS_OPTIONS -G'
alias s='gls $LS_OPTIONS -G'

alias gitk='gitk --all &'

export EDITOR=vim
# export LSCOLORS=gxfxcxdxbxegedabagacad
if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi

export JAVA_HOME=/usr
export EC2_HOME=/Users/stakei/devel/ec2-api-tools-1.6.3.0

export PATH=$PATH:$EC2_HOME/bin
