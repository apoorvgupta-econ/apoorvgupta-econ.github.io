#!/usr/bin/env zsh
set -euo pipefail

cd "$(dirname "$0")/.."
export PATH="/opt/homebrew/opt/ruby@3.3/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

echo "Building Jekyll site..."
bundle exec jekyll build
touch _site/.nojekyll

TMP_GH=$(mktemp -d)
trap 'rm -rf "$TMP_GH"' EXIT
cp -R _site/. "$TMP_GH/"

cd "$TMP_GH"
git init -b gh-pages
git config user.name "Apoorv Gupta"
git config user.email "35312379+apoorvgupta-econ@users.noreply.github.com"
git add -A
git commit -m "Deploy built al-folio site to gh-pages"
git remote add origin https://github.com/apoorvgupta-econ/apoorvgupta-econ.github.io.git
git push --force origin gh-pages

echo "Deployed successfully to gh-pages!"
