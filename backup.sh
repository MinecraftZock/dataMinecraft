#!/bin/bash

docker stop minecraft
sleep 30

BASEDIR=$(dirname "$0")

pushd "$BASEDIR"

git add .
git commit -m $(date +"%Y-%m-%d")
git push

popd

docker start minecraft
