#!/bin/sh

if [ ! $# = 1 ]; then
	echo "entre un nom de commit -- \"nom_commit\" " 
	exit 1
fi

hugo

cd public
git add *
git commit -m $1
git push
cd ..

git add *
git commit -m $1
git push
