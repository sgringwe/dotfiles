export DOTFILES="$HOME/.dotfiles"
export PATH="/usr/local/bin:$DOTFILES/bin:$HOME/go/bin:/usr/local/share/npm/bin:$HOME/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/.node/bin:$PATH"

find $DOTFILES/zshrc.d -name '*\.zsh' | sort | while read f; do
  source $f
done

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$PATH"

# AWS CLI
export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH=~/.local/bin:$PATH

eval "$(rbenv init - --no-rehash zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Golang https://golang.org/doc/code.html#GOPATH
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

# gpg-agent configuration for automatic commit signing using the agent
# [ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
# if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
#   export GPG_AGENT_INFO
#   export GPG_TTY=$(tty)
# else
#   eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
# fi

# Add gcloud to the PATH
export PATH=/Users/scott/google-cloud-sdk/bin:$PATH

# set up kubectl autocomplete
# 1. pre-req https://unix.stackexchange.com/questions/339954/zsh-command-not-found-compinstall-compinit-compdef
autoload -Uz compinit
compinit
# 2
source <(kubectl completion zsh) 

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
