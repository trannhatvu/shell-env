#!/bin/bash

# Color codes
RESET='\033[0m'
INFO_COLOR='\033[32m'  # Green
WARN_COLOR='\033[33m'  # Yellow
ERR_COLOR='\033[31m'   # Red

print_info() {
  echo -e "${INFO_COLOR}[INFO]${RESET} $1"
}

print_warn() {
  echo -e "${WARN_COLOR}[WARN]${RESET} $1"
}

print_err() {
  echo -e "${ERR_COLOR}[ERROR]${RESET} $1"
}
