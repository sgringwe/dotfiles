alias ber="bundle exec rspec"
alias fs="foreman start"

alias gst="git status"
alias gd="git diff"
alias gcam="git commit -a -m" # TODO(sgringwe): Add -S signs the commit using keychain
alias gfrm="git checkout master && git fetch && git rebase origin/master"
alias gbrd="git branch --merged master | grep -v master | grep -v stable | xargs git branch -d"
alias gclean="gfrm; gbrd; git gc"
# alias zf="bundle exec zenflow"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gpu="git push -u"

alias k="kubectl"
alias s="seira"