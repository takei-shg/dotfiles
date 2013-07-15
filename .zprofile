export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export PATH=$PATH:$JAVA_HOME/bin
export CATALINA_HOME=/usr/local/Cellar/tomcat/7.0.34/libexec
export JAVA_OPTS='-Dfile.encoding=UTF-8'
export SCALA_HOME=~/Developers/scala-2.8.1.final
# export PATH=$PATH:~/Developers/play-1.1.1:$SCALA_HOME/bin
# export PATH=$PATH:~/Developers/play-2.0.2:$SCALA_HOME/bin
export PATH=$PATH:~/bin/play-2.0.4:$SCALA_HOME/bin
# 2011/July/15 for android develop
export PATH=$PATH:/Applications/android-sdk-mac_x86/tools
# 2011/July/21 for Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

# 2012/Aug/5
export PATH="/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH"

# 2011/Dec/24 for java cui
export PATH=$PATH:~/Dev/java/Hello.jar
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
