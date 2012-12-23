export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export SCALA_HOME=~/Developers/scala-2.8.1.final
# export PATH=$PATH:~/Developers/play-1.1.1:$SCALA_HOME/bin
export PATH=$PATH:~/Developers/play-2.0.2:$SCALA_HOME/bin
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

# 2012/Jan/26
export D=~/Dev

#2012/Apr/15
#export PATH=$PATH:~/.cabal/bin

#2012/June/4 for android REPO
export PATH=~/bin:$PATH

#2012/July/3 to validate .bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
