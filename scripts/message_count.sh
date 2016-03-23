#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

print_messages() {
  "${CURRENT_DIR}"/messages
}

main() {
  print_messages
}
main
