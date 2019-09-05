#!/bin/bash

if ! [ -d /reference ]; then
    # Reference cache not mounted
    echo "Reference cache not mounted"
    exit 1
fi

cd /reference

if ! [ -d .git ]; then
    # Directory is not a git repository
    echo "Git repository not cloned"
    git clone git@github.com:joomla/joomla-cms.git .
if

git checkout 4.0-dev
git pull
