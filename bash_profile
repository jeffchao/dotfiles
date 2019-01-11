export PATH=/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin

export EDITOR=vim

export JAVA_HOME=/Users/jchao/.sdkman/candidates/java/current
export CLASSPATH=.:$HOME/.java/junit5-jupiter-api.jar:$HOME/.java/junit5-platform-console-standalone.jar

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

alias chrome="open -a google\ chrome"
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'

alias idea='open -a IntelliJ\ IDEA\ CE'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

eval "$(newt --completion-script-bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# May be used to install Gradle, etc.
export SDKMAN_DIR="/Users/jchao/.sdkman"
[[ -s "/Users/jchao/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jchao/.sdkman/bin/sdkman-init.sh"

eval "$(direnv hook bash)"
