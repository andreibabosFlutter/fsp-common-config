#!/bin/bash

# $1 = local folder containing module to be compiled (e.g. './core', './rng', etc)
# $2 = local release folder

# Perform build
cd $1
npm run build

# Remove carriage return from src & dist files
find ./src -type f -print0 | xargs -0 dos2unix
find ./dist -type f -print0 | xargs -0 dos2unix

# Launch hash calculation tool
cd -
node adm-tool/main.js $1

# Generate local release sub-folders
mkdir -p $2/src
mkdir -p $2/dist

cp -R $1/src/* $2/src
cp -R $1/dist/* $2/dist
cp -R ./hashLog.txt $2