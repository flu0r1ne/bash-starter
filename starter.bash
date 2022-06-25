#!/bin/bash

set -eo pipefail
IFS=$'\n\t'

PROGRAM="${0##*/}"

# EXTRACT ARGUMENTS
# ARG1 = "$1"

set -u

die () {
  if [[ $# -eq 0 ]]; then
    echo -n "$PROGRAM: " 1>&2
    cat <&0 1>&2
  elif [[ $# -eq 1 ]]; then
    echo "$PROGRAM: $1" 1>&2
  fi

  exit 1
}
