if [[ `uname -s` == 'Linux' ]]
then
	alias ls="ls --color=auto"
elif [[ `uname -s` == 'Darwin' ]]
then
	alias ls="ls -G"
fi

alias vi="vim"
# alias gp="git pull --rebase" # not all that great, it's nice to see diffs
alias :wq="exit"

