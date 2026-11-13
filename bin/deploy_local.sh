#!/usr/bin/env zsh
set -euo pipefail

cd "$(dirname "$0")/.."
REPO_ROOT="$PWD"
export PATH="/opt/homebrew/opt/ruby@3.3/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

echo "Building Jekyll site..."
bundle exec jekyll build
touch _site/.nojekyll

TMP_GH=$(mktemp -d)
cleanup() {
  git -C "$REPO_ROOT" worktree remove --force "$TMP_GH" >/dev/null 2>&1 || rm -rf "$TMP_GH"
}
trap cleanup EXIT

git fetch origin gh-pages --depth 1
git worktree add --detach "$TMP_GH" FETCH_HEAD
rsync -a --delete --exclude='.git' _site/ "$TMP_GH/"

cd "$TMP_GH"
git config user.name "Apoorv Gupta"
git config user.email "35312379+apoorvgupta-econ@users.noreply.github.com"
git add -A
if ! git diff --cached --quiet; then
  git commit -m "Deploy built al-folio site to gh-pages"
  git push origin HEAD:gh-pages
  echo "Deployed successfully to gh-pages!"
else
  echo "No changes to deploy."
fi
