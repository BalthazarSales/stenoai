#!/bin/bash
set -e
cd "$(dirname "$0")"
git add -A
git add -f stenoai.spec
git commit --amend --no-edit
git push origin main --force
bash dev/scripts/win-build.sh
