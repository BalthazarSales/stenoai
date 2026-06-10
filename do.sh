#!/bin/bash
set -e
cd "$(dirname "$0")"
git add -A
git commit --amend --no-edit
git push origin master --force
bash dev/scripts/win-build.sh
