#!/usr/bin/env zsh
set -euo pipefail

cd "$(dirname "$0")/.."
export PATH="/opt/homebrew/opt/ruby@3.3/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

echo "Building Jekyll site..."
bundle exec jekyll build
touch _site/.nojekyll

TMP_GH=$(mktemp -d)
trap 'rm -rf "$TMP_GH"' EXIT

git clone --branch gh-pages --depth 1 https://github.com/apoorvgupta-econ/apoorvgupta-econ.github.io.git "$TMP_GH"
rsync -a --delete --exclude='.git' _site/ "$TMP_GH/"

cd "$TMP_GH"
git config user.name "Apoorv Gupta"
git config user.email "35312379+apoorvgupta-econ@users.noreply.github.com"
git add -A
if ! git diff --cached --quiet; then
  git commit -m "Deploy built al-folio site to gh-pages"
  git push origin gh-pages
  echo "Deployed successfully to gh-pages!"
else
  echo "No changes to deploy."
fi
