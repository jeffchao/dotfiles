### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jchao/.sdkman"
[[ -s "/Users/jchao/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jchao/.sdkman/bin/sdkman-init.sh"

eval "$(direnv hook bash)"
