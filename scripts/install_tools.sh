#!/bin/bash

_install_tools() {
  PATH="$HOME/.local/bin:$PATH"
  PATH="$HOME/.cargo/bin:$PATH"

  if ! command -v "just" &> /dev/null; then
    print_info "Installing just..."
    curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to "$HOME/.local/bin"
  fi

  if ! command -v "uv" &> /dev/null; then
    print_info "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
  fi

  if ! command -v "cargo" &> /dev/null; then
    print_info "Installing cargo..."
    curl https://sh.rustup.rs -sSf | sh
  fi

  if ! command -v "cargo-binstall" &> /dev/null; then
    print_info "Installing cargo-binstall..."
    curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
  fi
}