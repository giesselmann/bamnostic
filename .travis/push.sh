#!/bin//sh

git_config() {
    git config --global user.email "mdsherman@betteridiot.tech"
    git config --global user.name "Marcus D. Sherman"
}

git_push() {
    git remote add origin https://${GH_TOKEN}@github.com/betteridiot/bamnostic.git > /dev/null 2>&1
    git branch --track dev origin/devel
    git merge devel
    git push --quiet --set-upstream origin master
}

git_config
git_push