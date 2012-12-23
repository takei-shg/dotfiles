# imported from https://github.com/rf0444/hoge/blob/master/bashrc_mac.txt

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w$(__git_ps1)\[\e[0m\]\n\$ '

export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

alias ls='gls --color=auto -G'
alias ll='gls --color=auto -alFG'
alias la='gls --color=auto -AG'
alias l='gls --color=auto -CFG'
alias lla='gls --color=auto -laG'

alias vi=vim
alias vr='vi -R'
alias sl='gls --color=auto -G'
alias s='gls --color=auto -G'

alias gitk='gitk --all &'

export EDITOR=vim
# export LSCOLORS=gxfxcxdxbxegedabagacad
if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi

export JAVA_HOME=/usr
export EC2_HOME=/Users/stakei/devel/ec2-api-tools-1.6.3.0

export PATH=$PATH:$EC2_HOME/bin

