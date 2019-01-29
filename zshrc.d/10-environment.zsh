[[ "$-" =~ "i" ]]; export INTERACTIVE="$?"
[[ "$-" =~ "l" ]]; export LOGIN="$?"

export GOPATH="$HOME/go"

# Turn on Go 1.11 modules :fire:
export GO111MODULE="on"