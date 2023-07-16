#!/bin/bash

repo="path/to/repo"
keepitgreen="path/to/keepItGreen"
fname="README.md"

cd $keepitgreen
python3 quoteGenerator.py "$(fortune)" "$repo/$fname"

cd $repo

#if ! git diff-index --quiet HEAD --; then
# exit 0
#fi

git add $fname
git commit -m "Auto update $fname"
git push
