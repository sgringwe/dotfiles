export DOTFILES="$HOME/.dotfiles"
export PATH="/usr/local/bin:$DOTFILES/bin:$HOME/go/bin:/usr/local/share/npm/bin:$HOME/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/.node/bin:$PATH"

find $DOTFILES/zshrc.d -name '*\.zsh' | sort | while read f; do
  source $f
done

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$PATH"
eval "$(rbenv init - --no-rehash zsh)"
