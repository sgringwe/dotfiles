if [[ `uname -s` == 'Linux' ]]
then
	alias ls="ls --color=auto"
elif [[ `uname -s` == 'Darwin' ]]
then
	alias ls="ls -G"
fi

alias source_zsh="source $DOTFILES/zshrc"

alias vi="vim"
alias vrc="vim $DOTFILES/vimrc"

alias gp="git pull --rebase"

alias stt="subl ."
alias :wq="exit"

alias t="tmuxinator"
alias mux="t start"

alias vinstall="vim +BundleInstall +qall"

alias c="cd ~/code/handshake"
alias fs="foreman start"
alias fsd="foreman start -f Procfile.dev"
alias beg="bundle exec guard"
alias ber="bundle exec rspec"

alias gst="git status"
alias gd="git diff"
alias gcam="git commit -a -m" # TODO(sgringwe): Add -S signs the commit using keychain
alias gfrm="git checkout $(gdefault) && git fetch && git rebase origin/$(gdefault)"
alias gclean="gfrm; git gc"
# alias zf="bundle exec zenflow"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gpu="git push -u"

alias k="kubectl"
alias s="seira"

alias devup="ssh -t localhost -p 2222 \"cd ~/handshake ; bash\""