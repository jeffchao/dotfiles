### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/jchao/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jchao/.sdkman"
[[ -s "/Users/jchao/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jchao/.sdkman/bin/sdkman-init.sh"

eval "$(direnv hook bash)"
