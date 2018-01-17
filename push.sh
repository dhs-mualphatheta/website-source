#!/bin/bash

echo -e "\033[0;32mPushing source changes...\033[0m"
git add --all
git commit -m "Updating website on `date`"
git push origin master