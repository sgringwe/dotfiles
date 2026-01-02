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

# load nvm and use the default version
if [[ $(uname) == "Darwin" ]]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
elif; then
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi
nvm use default

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
export PATH=/Users/$(whoami)/google-cloud-sdk/bin:$PATH

# set up kubectl autocomplete
# 1. pre-req https://unix.stackexchange.com/questions/339954/zsh-command-not-found-compinstall-compinit-compdef
# autoload -Uz compinit
# compinit
# # 2
# source <(kubectl completion zsh) 

# Set Spaceship ZSH as a prompt
fpath=( "$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath ) # Needed on M1 mac https://github.com/spaceship-prompt/spaceship-prompt/issues/1057
setopt prompt_subst
autoload -U promptinit
promptinit
prompt spaceship

# Removed 'git' because it added a ~0.5s lag. 'ruby' and 'node' added a slight lag too, but not as much.
export SPACESHIP_PROMPT_ORDER=(user host dir golang exec_time line_sep jobs exit_code char)

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.rbenv/bin:$PATH"

# Fix an issue with Puma forking in M3
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
