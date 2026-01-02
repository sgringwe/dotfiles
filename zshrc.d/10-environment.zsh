[[ "$-" =~ "i" ]]; export INTERACTIVE="$?"
[[ "$-" =~ "l" ]]; export LOGIN="$?"

export GOPATH="$HOME/go"

# Turn on Go 1.11 modules :fire:
export GO111MODULE="on"

# Globally give node more memory than default 1.5Gi
export NODE_OPTIONS="--max-old-space-size=4096"