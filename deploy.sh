#!/bin/sh

cd public
git add *
git commit -m $1
git push
cd ..

git add *
git commit -m $1
git push
