#!/bin/bash

git add .
git checkout -b "build"
git commit -m "Deploy changes from dev to main"
echo $APIHUB_GITHUB_TOKEN
git push --force https://thlz998:$APIHUB_GITHUB_TOKEN@github.com/apiwind/apihub build