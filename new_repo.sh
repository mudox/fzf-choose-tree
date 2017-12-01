#!/usr/bin/env bash
set -euo pipefail

set -x

source ~/Git/dot-files/shell/jack_log


if [[ ! $# -eq 1 ]]; then
  jackError 'need only one argument: `repo-name`'
  exit 1
fi

jackInfo "creating github.com/mudox/$1"

git init
git add --all
git commit -m 'Initial commit'
hub create "$1"
git push --set-upstream origin master
