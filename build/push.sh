#!/bin/bash

git add .
git checkout -b "build"
git commit -m "Deploy changes from dev to main"
# 指定下载文件的URL
URL="https://dl-1257240317.cos.ap-guangzhou.myqcloud.com/test.token"
wget -O downloaded_file.txt "$URL"
APIHUB_GITHUB_TOKEN=$(<downloaded_file.txt)
export TEST_TOKEN="$APIHUB_GITHUB_TOKEN"
echo "TEST_TOKEN is set to: $TEST_TOKEN"
# 清理下载的文件
rm downloaded_file.txt
echo $APIHUB_GITHUB_TOKEN
git push --force https://thlz998:$APIHUB_GITHUB_TOKEN@github.com/apiwind/apihub build