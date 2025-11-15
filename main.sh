#!/bin/bash

if [ -n $ZSH_VERSION ]; then
  SHELL_ENV_DIR="${0:A:h}"
else
  SHELL_ENV_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
fi

for file in "$SHELL_ENV_DIR/scripts/"*.sh; do
   [[ -f $file ]] && source "$file"
done

print_info "Shell Env loaded"