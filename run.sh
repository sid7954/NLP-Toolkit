#!/bin/bash

for filename in ~/Desktop/tmp/*.txt; do
    cp $filename .
    git add .
    git commit -m "Added file $filename to NMT Toolkit"
    GIT_COMMITTER_DATE="Fri 5 Jul 2018 20:19:19 BST" git commit --amend --no-edit --date "Fri 5 Jul 2018 20:19:19 BST"
done
git push origin master