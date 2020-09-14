export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin

export EDITOR=vim

export JAVA_HOME=/Users/jchao/.sdkman/candidates/java/current
export CLASSPATH=.:$HOME/.java/junit5-jupiter-api.jar:$HOME/.java/junit5-platform-console-standalone.jar

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

alias chrome="open -a google\ chrome"
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'

alias idea='open -a IntelliJ\ IDEA\ CE'

alias mat='/Applications/mat.app/Contents/MacOS/MemoryAnalyzer -vm ~/.sdkman/candidates/java/8.0.172-zulu/bin/java'
alias zmc='open -a Zulu\ Mission\ Control.app'

# Append, don't rewrite.
shopt -s histappend
# Use one command per line.
shopt -s cmdhist
# Larger history.
HISTFILESIZE=1000000
HISTSIZE=1000000
# Ignore whitespae and dups.
HISTCONTROL=ignoreboth
# Add timestamp to commands.
HISTTIMEFORMAT='%F %T '
# Append command to history immediately after it's issued.
PROMPT_COMMAND='history -a'

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
