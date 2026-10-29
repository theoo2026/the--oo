#!/usr/bin/env bash
# Publishes the THE OO site to GitHub Pages (free).
# 1. Create an empty PUBLIC repo on github.com, for example "the-oo-site".
# 2. Set your details below, then run:  bash publish.sh
GITHUB_USER="YOUR-GITHUB-USERNAME"
REPO="the-oo-site"

set -e
cd "$(dirname "$0")/the-oo-site"
git init -b main
git add .
git commit -m "THE OO website"
git remote add origin "https://github.com/$GITHUB_USER/$REPO.git"
git push -u origin main
echo
echo "Now turn on Pages: https://github.com/$GITHUB_USER/$REPO/settings/pages"
echo "Source: Deploy from a branch, Branch: main, Folder: / (root), then Save."
echo "Your site will be live at: https://$GITHUB_USER.github.io/$REPO/"
