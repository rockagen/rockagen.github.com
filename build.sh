#!/bin/sh

# clean up script

find . -name *~ | xarts rm -rvf 
rm -rvf .git/
git init
git add .
git commit -m "clean up"
git remote add origin git@github.com:rockagen/rockagen.github.com.git
git remote -v
git config branch.master.remote origin
git branch -m master source
rm -rvf _deploy
mkdir _deploy
cd _deploy
git init
echo "Hey,tony!" > index.html
git add .
git commit -m "init"
git remote add origin git@github.com:rockagen/rockagen.github.com.git
git remote -v
git config branch.master.remote origin
cd ..
rake generate
rake preview



