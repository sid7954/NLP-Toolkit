#!/bin/bash

for filename in ~/Desktop/tmp/*.md; do
    cp $filename .
    git add .
    git commit -m "Added file $filename to NMT Toolkit"
    GIT_COMMITTER_DATE="Sun 7 Jul 2018 20:19:19 BST" git commit --amend --no-edit --date "Sun 7 Jul 2018 20:19:19 BST"
done
git push origin master