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

export NVM_DIR="/Users/stallion/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Golang https://golang.org/doc/code.html#GOPATH
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

# gpg-agent configuration for automatic commit signing using the agent
[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
  export GPG_AGENT_INFO
  export GPG_TTY=$(tty)
else
  eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
fi

# set up kubectl autocomplete
source <(kubectl completion zsh) 