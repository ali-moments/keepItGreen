#!/bin/bash

repo="path/to/repo"
fname="README.md"

python3 quoteGenerator.py "$(fortune)" "$repo/$fname"

cd $repo

if ! git diff-index --quiet HEAD --; then
 exit 0
fi

git add README.md
git commit -m "Auto update readme.md"
git push origin master
