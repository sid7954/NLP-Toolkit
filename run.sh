#!/bin/bash

for filename in ~/Desktop/tmp/*.py; do
    cp $filename .
    git add .
    git commit -m "Added file $filename to NMT Toolkit"
    GIT_COMMITTER_DATE="Sun 16 Jun 2018 20:19:19 BST" git commit --amend --no-edit --date "Sun 16 Jun 2018 20:19:19 BST"
done
git push origin master