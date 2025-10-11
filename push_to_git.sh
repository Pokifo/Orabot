#!/bin/bash
set -e

git add -A
commit_msg=${1:-"Auto-commit on $(date '+%Y-%m-%d %H:%M:%S')"}
git commit -m "$commit_msg" || echo "?? No changes to commit."
git push