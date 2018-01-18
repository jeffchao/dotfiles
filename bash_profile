export GOPATH=$HOME/src/go

export PATH=/usr/local/bin:./node_modules/.bin:$PATH:$GOPATH/bin:/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=vim

export JAVA_HOME=/Users/jchao/.sdkman/candidates/java/current
export CLASSPATH=.:$HOME/.java/junit-4.12.jar:$HOME/.java/hamcrest-core-1.3.jar

export DOCKER_HOST=tcp://192.168.59.103:2375

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

alias chrome="open -a google\ chrome"
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'

alias idea='open -a IntelliJ\ IDEA\ CE'

export PS1="\[\033[36m\]jchao\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]$ "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# May be used to install Gradle, etc.
export SDKMAN_DIR="/Users/jchao/.sdkman"
[[ -s "/Users/jchao/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jchao/.sdkman/bin/sdkman-init.sh"

eval "$(direnv hook bash)"
