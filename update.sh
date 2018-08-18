#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
# First make sure we are in dev mode
cd public
git checkout master
rm -rf *
cd ..

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
git add --all

# Commit changes.
msg="Publishing to github pages `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit --allow-empty -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..

echo -e "\033[0;32mPushing source changes...\033[0m"
git add --all
git commit --allow-empty -m "Updating website on `date`"
git push origin master
