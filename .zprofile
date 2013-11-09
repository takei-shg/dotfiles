# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
# export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
# export PATH=$PATH:$JAVA_HOME/bin
export CATALINA_HOME=/usr/local/Cellar/tomcat/7.0.34/libexec
export JAVA_OPTS='-Dfile.encoding=UTF-8'
# export SCALA_HOME=~/Developers/scala-2.8.1.final
# export PATH=$PATH:~/Developers/play-1.1.1:$SCALA_HOME/bin
# export PATH=$PATH:~/Developers/play-2.0.2:$SCALA_HOME/bin
# export PATH=$PATH:~/bin/play-2.0.4:$SCALA_HOME/bin
# 2011/July/21 for Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

# 2012/Aug/5
export PATH="/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH"

##
# Your previous /Users/stakei/.bash_profile file was backed up as /Users/stakei/.bash_profile.macports-saved_2011-05-26_at_22:14:13
##

# MacPorts Installer addition on 2011-05-26_at_22:14:13: adding an # appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# 2011/Dec/30 homebrew install
export PATH=/usr/local/bin:$PATH

#2013/June/1 for erlang lib
export ERL_LIBS=/Users/stakei/devel/erlang/proper

# 2013/July/13
# path for apps installed by rubygems
export PATH="/usr/local/Cellar/ruby/2.0.0-p247/bin:$PATH"

# Erlang
. $HOME/devel/erlang/activate

# for tmuxx
export PATH="$HOME/dotfiles:$PATH"

# 2013/July/22
export PATH="$HOME/cabal-dev/bin:$PATH"

# 2013/Aug/17
export PATH="/Applications/CoqIdE_8.3pl5.app/Contents/Resources/bin:$PATH"

# 2013/Sep/3 for conscript
export PATH="$HOME/bin:$PATH"
# export TERM="xterm-256color"
alias gitk="gitk --all &"
alias d='cd ~/devel'
alias dw='cd ~/devel/work'
alias dh='cd ~/devel/haskell'
alias bower='noglob bower'
alias less="${PAGER}"
export PAGER='less -X -i'
alias -g L='| less' # ついでにこれもあると便利
alias grep="grep -v grep | grep"
