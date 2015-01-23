#! /bin/sh

set -e

git add --all .
git commit -m "backup" || exit
ssh-agent sh -c 'ssh-add ~/.ssh/djmitche-beersmith; git push'
