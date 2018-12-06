# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
# export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
# export PATH=$PATH:$JAVA_HOME/bin
export CATALINA_HOME=/usr/local/Cellar/tomcat/7.0.34/libexec
export JAVA_OPTS='-Dfile.encoding=UTF-8'

# for tmuxx
export PATH="$HOME/dotfiles:$PATH"

# 2013/Sep/3 for conscript
export PATH="$HOME/bin:$PATH"
# export TERM="xterm-256color"
alias gitk="gitk --all &"
alias vag="vagrant"
alias dev='cd ~/dev'
alias dn='cd ~/dev/dennoo'
export dn="$HOME/dev/dennoo"
alias sn='cd ~/dev/smartnews'
export sn="$HOME/dev/smartnews"
alias dh='cd ~/dev/haskell'
alias bower='noglob bower'
alias less="${PAGER}"
export PAGER='less -X -i'
alias -g L='| less' # ついでにこれもあると便利
alias grep="grep -v grep | grep --color "
alias pswork="cat ~/pswork"
alias tm="tmuxx"
alias hosts="sudo vim /etc/hosts"
alias simpleserver="python -m SimpleHTTPServer"
alias mvim="/usr/local/Cellar/macvim-kaoriya/HEAD/MacVim.app/Contents/MacOS/mvim"
alias less='less -X'
alias xml="xmllint --format -"

alias gf="git fetch"
alias gc="git commit"
alias gr="git rebase"
alias gs="git st"
alias gd="git diff"
alias gdc="git dic"
alias grbi="git rebase -i HEAD~~~~~"
alias ga="git add"
alias gn="git now --all --stat"
alias tig="/usr/local/bin/tig --all"

export JAVA_HOME=`/usr/libexec/java_home -d 64 -v "1.8*"`

# 2011/Dec/30 homebrew install
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/Cellar:$PATH"
export PATH="/usr/local/lib/node_modules:$PATH"

