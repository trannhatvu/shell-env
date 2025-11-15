#!/bin/bash

if [[ -n $ZSH_VERSION ]]; then
  SHENV_DIR="${0:A:h}"
else
  SHENV_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
fi

for file in "$SHENV_DIR/scripts/"*.sh; do
  # shellcheck disable=SC1090
  [[ -f $file ]] && source "$file"
done

_install_tools

print_info "Shell Env loaded"