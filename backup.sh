#!/bin/bash

BASEDIR=$(dirname "$0")

pwd

pushd "$BASEDIR"

git add .
git commit -m $(date +"%Y-%m-%d")
git push

popd
