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
alias alldone="git checkout master && git fetch origin -p && git pull"

alias stagingconsole="heroku run rails c -a handshake-staging"
alias democonsole="heroku run rails c -a handshake-demo"
alias productionconsole="heroku run rails c -a handshake-production"

alias stt="subl ."
alias m="mutt"
alias nb="newsbeuter"
alias :wq="exit"

alias django="python manage.py"
alias django2="python2 manage.py"

alias t="tmuxinator"
alias mux="t start"

alias v="vagrant"
alias vl="vagrant list"
alias vssh="vagrant ssh"
alias vup="vagrant up"
alias vdown="vagrant halt"
alias vp="vagrant provision"

alias vinstall="vim +BundleInstall +qall"

alias c="cd ~/code/handshake"
alias fs="foreman start"
alias fsd="foreman start -f Procfile.dev"
alias beg="bundle exec guard"
alias ber="bundle exec rspec"

alias gst="git status"
alias gd="git diff"
alias gcam="git commit -a -S -m" # -S signs the commit using keychain
alias gfrm="git checkout master && git fetch && git rebase origin/master"
alias gbrd="git branch --merged master | grep -v master | grep -v stable | xargs git branch -d"
alias gclean="gfrm; gbrd; git gc"
# alias zf="bundle exec zenflow"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gpu="git push -u"
