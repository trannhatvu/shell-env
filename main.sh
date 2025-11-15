#!/bin/bash

for file in ~/shell-env/scripts/*.sh; do
   [[ -f $file ]] && source "$file"
done

print_info "Shell Env loaded"